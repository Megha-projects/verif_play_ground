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

        # Define temporary paths for the input and output files
        excel_file_path = f"/tmp/{excel_file.name}"
        output_file = "/tmp/uvm_ral_model.sv"

        # Save the uploaded file to a temporary location
        try:
            with open(excel_file_path, 'wb') as f:
                for chunk in excel_file.chunks():
                    f.write(chunk)

            # Call the function to generate the .sv file
            try:
                excel_to_uvm_ral(excel_file_path, output_file)
            except Exception as e:
                return Response({"error": f"Error generating .sv file: {str(e)}"}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)
        finally:
            # Clean up the uploaded file
            if os.path.exists(excel_file_path):
                os.remove(excel_file_path)

        # Return the generated .sv file as a response
        if os.path.exists(output_file):
            response = FileResponse(open(output_file, 'rb'), as_attachment=True, filename="uvm_ral_model.sv")
            # Clean up the output file after returning it
            response["file-cleanup-path"] = output_file  # Adding metadata for cleanup
            return response
        else:
            return Response({"error": "Failed to generate .sv file"}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)


class UvmRalGeneratorbase64View(APIView):
    parser_classes = (MultiPartParser, FormParser)

    def post(self, request):
        # Get the uploaded Excel file from the request
        excel_file = request.FILES.get('file')

        if not excel_file:
            return Response({"error": "No file provided"}, status=status.HTTP_400_BAD_REQUEST)

        # Define temporary paths for the input and output files
        excel_file_path = f"/tmp/{excel_file.name}"
        output_file = "/tmp/uvm_ral_model.sv"

        # Save the uploaded file to a temporary location
        try:
            with open(excel_file_path, 'wb') as f:
                for chunk in excel_file.chunks():
                    f.write(chunk)

            # Call the function to generate the .sv file
            try:
                excel_to_uvm_ral(excel_file_path, output_file)
            except Exception as e:
                return Response({"error": f"Error generating .sv file: {str(e)}"}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)
        finally:
            # Clean up the uploaded file
            if os.path.exists(excel_file_path):
                os.remove(excel_file_path)

        # Return the generated .sv file as a Base64-encoded string
        if os.path.exists(output_file):
            try:
                with open(output_file, 'rb') as f:
                    file_content = f.read()
                    base64_encoded_content = base64.b64encode(file_content).decode('utf-8')
                # Clean up the output file after encoding
                os.remove(output_file)
                return Response({"file": base64_encoded_content}, status=status.HTTP_200_OK)
            except Exception as e:
                return Response({"error": f"Error encoding file to Base64: {str(e)}"}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)
        else:
            return Response({"error": "Failed to generate .sv file"}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)