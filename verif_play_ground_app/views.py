from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework.parsers import MultiPartParser,FormParser
from rest_framework import status
from .utils import excel_to_uvm_ral
from django.http import FileResponse

class UvmRalGeneratorView(APIView):
    parser_classes = (MultiPartParser, FormParser)

    def post(self, request):
        # Get the uploaded Excel file from the request
        excel_file = request.FILES.get('file')

        if not excel_file:
            return Response({"error": "No file provided"}, status=status.HTTP_400_BAD_REQUEST)

        # Define the output .sv file path
        output_file = "uvm_ral_model.sv"

        # Call the conversion function
        excel_file_path = f"/tmp/{excel_file.name}"
        with open(excel_file_path, 'wb') as f:
            for chunk in excel_file.chunks():
                f.write(chunk)

        # Call the function to generate the .sv file
        try:
            excel_to_uvm_ral(excel_file_path, output_file)
        except Exception as e:
            return Response({"error": str(e)}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)

        # Return the generated .sv file as a response
        response = FileResponse(open(output_file, 'rb'), as_attachment=True, filename=output_file)
        return response