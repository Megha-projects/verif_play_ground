`ifndef REG_MODEL
`define REG_MODEL

class CMD_REG0 extends uvm_reg;
  `uvm_object_utils(CMD_REG0)

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "CMD_REG0");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  //---------------------------------------
    rand uvm_reg_field RD_START_ADDR;
  //---------------------------------------
  function void build;
    RD_START_ADDR = uvm_reg_field::type_id::create("RD_START_ADDR");
    RD_START_ADDR.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(31),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
  endfunction
endclass

class CMD_REG1 extends uvm_reg;
  `uvm_object_utils(CMD_REG1)

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "CMD_REG1");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  //---------------------------------------
    rand uvm_reg_field WR_START_ADDR;
  //---------------------------------------
  function void build;
    WR_START_ADDR = uvm_reg_field::type_id::create("WR_START_ADDR");
    WR_START_ADDR.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(31),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
  endfunction
endclass

class CMD_REG2 extends uvm_reg;
  `uvm_object_utils(CMD_REG2)

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "CMD_REG2");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  //---------------------------------------
    rand uvm_reg_field BUFFER_SIZE;
    rand uvm_reg_field X_SIZE;
    rand uvm_reg_field Y_SIZE;
  //---------------------------------------
  function void build;
    BUFFER_SIZE = uvm_reg_field::type_id::create("BUFFER_SIZE");
    BUFFER_SIZE.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(15),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    X_SIZE = uvm_reg_field::type_id::create("X_SIZE");
    X_SIZE.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(7),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    Y_SIZE = uvm_reg_field::type_id::create("Y_SIZE");
    Y_SIZE.configure(.parent(this),
                           .size(8),
                           .lsb_pos(8),
                           .msb_pos(15),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
  endfunction
endclass

class CMD_REG3 extends uvm_reg;
  `uvm_object_utils(CMD_REG3)

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "CMD_REG3");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  //---------------------------------------
    rand uvm_reg_field CMD_SET_INT;
    rand uvm_reg_field CMD_LAST;
    rand uvm_reg_field CMD_NEXT_ADDR;
  //---------------------------------------
  function void build;
    CMD_SET_INT = uvm_reg_field::type_id::create("CMD_SET_INT");
    CMD_SET_INT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CMD_LAST = uvm_reg_field::type_id::create("CMD_LAST");
    CMD_LAST.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CMD_NEXT_ADDR = uvm_reg_field::type_id::create("CMD_NEXT_ADDR");
    CMD_NEXT_ADDR.configure(.parent(this),
                           .size(28),
                           .lsb_pos(4),
                           .msb_pos(31),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
  endfunction
endclass

class STATIC_REG0 extends uvm_reg;
  `uvm_object_utils(STATIC_REG0)

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "STATIC_REG0");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  //---------------------------------------
    rand uvm_reg_field RD_BURST_MAX_SIZE;
    rand uvm_reg_field RD_ALLOW_FULL_BURST;
    rand uvm_reg_field RD_ALLOW_FULL_FIFO;
    rand uvm_reg_field RD_TOKENS;
    rand uvm_reg_field RD_OUTSTANDING;
    rand uvm_reg_field RD_INCR;
  //---------------------------------------
  function void build;
    RD_BURST_MAX_SIZE = uvm_reg_field::type_id::create("RD_BURST_MAX_SIZE");
    RD_BURST_MAX_SIZE.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(9),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    RD_ALLOW_FULL_BURST = uvm_reg_field::type_id::create("RD_ALLOW_FULL_BURST");
    RD_ALLOW_FULL_BURST.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    RD_ALLOW_FULL_FIFO = uvm_reg_field::type_id::create("RD_ALLOW_FULL_FIFO");
    RD_ALLOW_FULL_FIFO.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    RD_TOKENS = uvm_reg_field::type_id::create("RD_TOKENS");
    RD_TOKENS.configure(.parent(this),
                           .size(6),
                           .lsb_pos(16),
                           .msb_pos(21),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    RD_OUTSTANDING = uvm_reg_field::type_id::create("RD_OUTSTANDING");
    RD_OUTSTANDING.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    RD_INCR = uvm_reg_field::type_id::create("RD_INCR");
    RD_INCR.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
  endfunction
endclass

class STATIC_REG1 extends uvm_reg;
  `uvm_object_utils(STATIC_REG1)

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "STATIC_REG1");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  //---------------------------------------
    rand uvm_reg_field WR_BURST_MAX_SIZE;
    rand uvm_reg_field WR_ALLOW_FULL_BURST;
    rand uvm_reg_field WR_ALLOW_FULL_FIFO;
    rand uvm_reg_field WR_TOKENS;
    rand uvm_reg_field WR_OUTSTANDING;
    rand uvm_reg_field WR_INCR;
  //---------------------------------------
  function void build;
    WR_BURST_MAX_SIZE = uvm_reg_field::type_id::create("WR_BURST_MAX_SIZE");
    WR_BURST_MAX_SIZE.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(9),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    WR_ALLOW_FULL_BURST = uvm_reg_field::type_id::create("WR_ALLOW_FULL_BURST");
    WR_ALLOW_FULL_BURST.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    WR_ALLOW_FULL_FIFO = uvm_reg_field::type_id::create("WR_ALLOW_FULL_FIFO");
    WR_ALLOW_FULL_FIFO.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    WR_TOKENS = uvm_reg_field::type_id::create("WR_TOKENS");
    WR_TOKENS.configure(.parent(this),
                           .size(6),
                           .lsb_pos(16),
                           .msb_pos(21),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    WR_OUTSTANDING = uvm_reg_field::type_id::create("WR_OUTSTANDING");
    WR_OUTSTANDING.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    WR_INCR = uvm_reg_field::type_id::create("WR_INCR");
    WR_INCR.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
  endfunction
endclass

class STATIC_REG2 extends uvm_reg;
  `uvm_object_utils(STATIC_REG2)

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "STATIC_REG2");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  //---------------------------------------
    rand uvm_reg_field FRAME_WIDTH;
    rand uvm_reg_field BLOCK;
    rand uvm_reg_field JOINT;
    rand uvm_reg_field AUTO_RETRY;
    rand uvm_reg_field RD_CMD_PORT_NUM;
    rand uvm_reg_field RD_PORT_NUM;
    rand uvm_reg_field WR_PORT_NUM;
    rand uvm_reg_field INT_NUM;
    rand uvm_reg_field END_SWAP;
  //---------------------------------------
  function void build;
    FRAME_WIDTH = uvm_reg_field::type_id::create("FRAME_WIDTH");
    FRAME_WIDTH.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(11),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    BLOCK = uvm_reg_field::type_id::create("BLOCK");
    BLOCK.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    JOINT = uvm_reg_field::type_id::create("JOINT");
    JOINT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    AUTO_RETRY = uvm_reg_field::type_id::create("AUTO_RETRY");
    AUTO_RETRY.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    RD_CMD_PORT_NUM = uvm_reg_field::type_id::create("RD_CMD_PORT_NUM");
    RD_CMD_PORT_NUM.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    RD_PORT_NUM = uvm_reg_field::type_id::create("RD_PORT_NUM");
    RD_PORT_NUM.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    WR_PORT_NUM = uvm_reg_field::type_id::create("WR_PORT_NUM");
    WR_PORT_NUM.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    INT_NUM = uvm_reg_field::type_id::create("INT_NUM");
    INT_NUM.configure(.parent(this),
                           .size(3),
                           .lsb_pos(24),
                           .msb_pos(26),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    END_SWAP = uvm_reg_field::type_id::create("END_SWAP");
    END_SWAP.configure(.parent(this),
                           .size(2),
                           .lsb_pos(28),
                           .msb_pos(29),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
  endfunction
endclass

class STATIC_REG3 extends uvm_reg;
  `uvm_object_utils(STATIC_REG3)

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "STATIC_REG3");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  //---------------------------------------
    rand uvm_reg_field RD_WAIT_LIMIT;
    rand uvm_reg_field WR_WAIT_LIMIT;
  //---------------------------------------
  function void build;
    RD_WAIT_LIMIT = uvm_reg_field::type_id::create("RD_WAIT_LIMIT");
    RD_WAIT_LIMIT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(11),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    WR_WAIT_LIMIT = uvm_reg_field::type_id::create("WR_WAIT_LIMIT");
    WR_WAIT_LIMIT.configure(.parent(this),
                           .size(12),
                           .lsb_pos(16),
                           .msb_pos(27),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
  endfunction
endclass

class STATIC_REG4 extends uvm_reg;
  `uvm_object_utils(STATIC_REG4)

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "STATIC_REG4");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  //---------------------------------------
    rand uvm_reg_field RD_PERIPH_NUM;
    rand uvm_reg_field RD_PERIPH_DELAY;
    rand uvm_reg_field RD_PERIPH_BLOCK;
    rand uvm_reg_field WR_PERIPH_NUM;
    rand uvm_reg_field WR_PERIPH_DELAY;
    rand uvm_reg_field WR_PERIPH_BLOCK;
  //---------------------------------------
  function void build;
    RD_PERIPH_NUM = uvm_reg_field::type_id::create("RD_PERIPH_NUM");
    RD_PERIPH_NUM.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(4),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    RD_PERIPH_DELAY = uvm_reg_field::type_id::create("RD_PERIPH_DELAY");
    RD_PERIPH_DELAY.configure(.parent(this),
                           .size(3),
                           .lsb_pos(8),
                           .msb_pos(10),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    RD_PERIPH_BLOCK = uvm_reg_field::type_id::create("RD_PERIPH_BLOCK");
    RD_PERIPH_BLOCK.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    WR_PERIPH_NUM = uvm_reg_field::type_id::create("WR_PERIPH_NUM");
    WR_PERIPH_NUM.configure(.parent(this),
                           .size(5),
                           .lsb_pos(16),
                           .msb_pos(20),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    WR_PERIPH_DELAY = uvm_reg_field::type_id::create("WR_PERIPH_DELAY");
    WR_PERIPH_DELAY.configure(.parent(this),
                           .size(3),
                           .lsb_pos(24),
                           .msb_pos(26),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    WR_PERIPH_BLOCK = uvm_reg_field::type_id::create("WR_PERIPH_BLOCK");
    WR_PERIPH_BLOCK.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
  endfunction
endclass

class RESTRICT_REG extends uvm_reg;
  `uvm_object_utils(RESTRICT_REG)

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "RESTRICT_REG");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  //---------------------------------------
    rand uvm_reg_field RD_ALLOW_FULL_FIFO;
    rand uvm_reg_field WR_ALLOW_FULL_FIFO;
    rand uvm_reg_field ALLOW_FULL_FIFO;
    rand uvm_reg_field ALLOW_FULL_BURST;
    rand uvm_reg_field ALLOW_JOINT_BURST;
    rand uvm_reg_field RD_OUTSTANDING_STAT;
    rand uvm_reg_field WR_OUTSTANDING_STAT;
    rand uvm_reg_field BLOCK_NON_ALIGN_STAT;
    rand uvm_reg_field SIMPLE_STAT;
  //---------------------------------------
  function void build;
    RD_ALLOW_FULL_FIFO = uvm_reg_field::type_id::create("RD_ALLOW_FULL_FIFO");
    RD_ALLOW_FULL_FIFO.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    WR_ALLOW_FULL_FIFO = uvm_reg_field::type_id::create("WR_ALLOW_FULL_FIFO");
    WR_ALLOW_FULL_FIFO.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    ALLOW_FULL_FIFO = uvm_reg_field::type_id::create("ALLOW_FULL_FIFO");
    ALLOW_FULL_FIFO.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    ALLOW_FULL_BURST = uvm_reg_field::type_id::create("ALLOW_FULL_BURST");
    ALLOW_FULL_BURST.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    ALLOW_JOINT_BURST = uvm_reg_field::type_id::create("ALLOW_JOINT_BURST");
    ALLOW_JOINT_BURST.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    RD_OUTSTANDING_STAT = uvm_reg_field::type_id::create("RD_OUTSTANDING_STAT");
    RD_OUTSTANDING_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    WR_OUTSTANDING_STAT = uvm_reg_field::type_id::create("WR_OUTSTANDING_STAT");
    WR_OUTSTANDING_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    BLOCK_NON_ALIGN_STAT = uvm_reg_field::type_id::create("BLOCK_NON_ALIGN_STAT");
    BLOCK_NON_ALIGN_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    SIMPLE_STAT = uvm_reg_field::type_id::create("SIMPLE_STAT");
    SIMPLE_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
  endfunction
endclass

class READ_OFFSET_REG extends uvm_reg;
  `uvm_object_utils(READ_OFFSET_REG)

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "READ_OFFSET_REG");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  //---------------------------------------
    rand uvm_reg_field RD_OFFSET;
    rand uvm_reg_field RD_X_OFFSET;
    rand uvm_reg_field RD_Y_OFFSET;
  //---------------------------------------
  function void build;
    RD_OFFSET = uvm_reg_field::type_id::create("RD_OFFSET");
    RD_OFFSET.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(15),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    RD_X_OFFSET = uvm_reg_field::type_id::create("RD_X_OFFSET");
    RD_X_OFFSET.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(7),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    RD_Y_OFFSET = uvm_reg_field::type_id::create("RD_Y_OFFSET");
    RD_Y_OFFSET.configure(.parent(this),
                           .size(8),
                           .lsb_pos(16),
                           .msb_pos(23),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
  endfunction
endclass

class WRITE_OFFSET_REG extends uvm_reg;
  `uvm_object_utils(WRITE_OFFSET_REG)

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "WRITE_OFFSET_REG");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  //---------------------------------------
    rand uvm_reg_field WR_OFFSET;
    rand uvm_reg_field WR_X_OFFSET;
    rand uvm_reg_field WR_Y_OFFSET;
  //---------------------------------------
  function void build;
    WR_OFFSET = uvm_reg_field::type_id::create("WR_OFFSET");
    WR_OFFSET.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(15),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    WR_X_OFFSET = uvm_reg_field::type_id::create("WR_X_OFFSET");
    WR_X_OFFSET.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(7),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    WR_Y_OFFSET = uvm_reg_field::type_id::create("WR_Y_OFFSET");
    WR_Y_OFFSET.configure(.parent(this),
                           .size(8),
                           .lsb_pos(16),
                           .msb_pos(23),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
  endfunction
endclass

class FIFO_FULLNESS_REG extends uvm_reg;
  `uvm_object_utils(FIFO_FULLNESS_REG)

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "FIFO_FULLNESS_REG");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  //---------------------------------------
    rand uvm_reg_field RD_GAP;
    rand uvm_reg_field WR_FULLNESS;
  //---------------------------------------
  function void build;
    RD_GAP = uvm_reg_field::type_id::create("RD_GAP");
    RD_GAP.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(9),
                           .access("R/W"),
                           .volatile(0),
                           .reset(1),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    WR_FULLNESS = uvm_reg_field::type_id::create("WR_FULLNESS");
    WR_FULLNESS.configure(.parent(this),
                           .size(10),
                           .lsb_pos(16),
                           .msb_pos(25),
                           .access("R/W"),
                           .volatile(0),
                           .reset(1),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
  endfunction
endclass

class CH_ENABLE_REG extends uvm_reg;
  `uvm_object_utils(CH_ENABLE_REG)

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "CH_ENABLE_REG");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  //---------------------------------------
    rand uvm_reg_field CH_ENABLE;
  //---------------------------------------
  function void build;
    CH_ENABLE = uvm_reg_field::type_id::create("CH_ENABLE");
    CH_ENABLE.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
  endfunction
endclass

class CH_START_REG extends uvm_reg;
  `uvm_object_utils(CH_START_REG)

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "CH_START_REG");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  //---------------------------------------
    rand uvm_reg_field CH_START;
  //---------------------------------------
  function void build;
    CH_START = uvm_reg_field::type_id::create("CH_START");
    CH_START.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
  endfunction
endclass

class CH_ACTIVE_REG extends uvm_reg;
  `uvm_object_utils(CH_ACTIVE_REG)

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "CH_ACTIVE_REG");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  //---------------------------------------
    rand uvm_reg_field CH_RD_ACTIVE;
    rand uvm_reg_field CH_WR_ACTIVE;
  //---------------------------------------
  function void build;
    CH_RD_ACTIVE = uvm_reg_field::type_id::create("CH_RD_ACTIVE");
    CH_RD_ACTIVE.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CH_WR_ACTIVE = uvm_reg_field::type_id::create("CH_WR_ACTIVE");
    CH_WR_ACTIVE.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
  endfunction
endclass

class COUNT_REG extends uvm_reg;
  `uvm_object_utils(COUNT_REG)

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "COUNT_REG");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  //---------------------------------------
    rand uvm_reg_field BUFF_COUNT;
    rand uvm_reg_field INT_COUNT;
  //---------------------------------------
  function void build;
    BUFF_COUNT = uvm_reg_field::type_id::create("BUFF_COUNT");
    BUFF_COUNT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(15),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    INT_COUNT = uvm_reg_field::type_id::create("INT_COUNT");
    INT_COUNT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(5),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
  endfunction
endclass

class INT_RAWSTAT_REG extends uvm_reg;
  `uvm_object_utils(INT_RAWSTAT_REG)

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "INT_RAWSTAT_REG");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  //---------------------------------------
    rand uvm_reg_field INT_RAWSTAT_CH_END;
    rand uvm_reg_field INT_RAWSTAT_RD_SLVERR;
    rand uvm_reg_field INT_RAWSTAT_WR_SLVERR;
    rand uvm_reg_field INT_RAWSTAT_OVERFLOW;
    rand uvm_reg_field INT_RAWSTAT_UNDERFLOW;
    rand uvm_reg_field INT_RAWSTAT_TIMEOUT_RD;
    rand uvm_reg_field INT_RAWSTAT_TIMEOUT_WR;
    rand uvm_reg_field INT_RAWSTAT_WDT;
  //---------------------------------------
  function void build;
    INT_RAWSTAT_CH_END = uvm_reg_field::type_id::create("INT_RAWSTAT_CH_END");
    INT_RAWSTAT_CH_END.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    INT_RAWSTAT_RD_SLVERR = uvm_reg_field::type_id::create("INT_RAWSTAT_RD_SLVERR");
    INT_RAWSTAT_RD_SLVERR.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    INT_RAWSTAT_WR_SLVERR = uvm_reg_field::type_id::create("INT_RAWSTAT_WR_SLVERR");
    INT_RAWSTAT_WR_SLVERR.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    INT_RAWSTAT_OVERFLOW = uvm_reg_field::type_id::create("INT_RAWSTAT_OVERFLOW");
    INT_RAWSTAT_OVERFLOW.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    INT_RAWSTAT_UNDERFLOW = uvm_reg_field::type_id::create("INT_RAWSTAT_UNDERFLOW");
    INT_RAWSTAT_UNDERFLOW.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    INT_RAWSTAT_TIMEOUT_RD = uvm_reg_field::type_id::create("INT_RAWSTAT_TIMEOUT_RD");
    INT_RAWSTAT_TIMEOUT_RD.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    INT_RAWSTAT_TIMEOUT_WR = uvm_reg_field::type_id::create("INT_RAWSTAT_TIMEOUT_WR");
    INT_RAWSTAT_TIMEOUT_WR.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    INT_RAWSTAT_WDT = uvm_reg_field::type_id::create("INT_RAWSTAT_WDT");
    INT_RAWSTAT_WDT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
  endfunction
endclass

class INT_CLEAR_REG extends uvm_reg;
  `uvm_object_utils(INT_CLEAR_REG)

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "INT_CLEAR_REG");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  //---------------------------------------
    rand uvm_reg_field INT_CLR_CH_END;
    rand uvm_reg_field INT_CLR_RD_SLVERR;
    rand uvm_reg_field INT_CLR_WR_SLVERR;
    rand uvm_reg_field INT_CLR_OVERFLOW;
    rand uvm_reg_field INT_CLR_OVERFLOW;
    rand uvm_reg_field INT_CLR_TIMEOUT_RD;
    rand uvm_reg_field INT_CLR_TIMEOUT_WR;
    rand uvm_reg_field INT_CLR_WDT;
  //---------------------------------------
  function void build;
    INT_CLR_CH_END = uvm_reg_field::type_id::create("INT_CLR_CH_END");
    INT_CLR_CH_END.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(1),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    INT_CLR_RD_SLVERR = uvm_reg_field::type_id::create("INT_CLR_RD_SLVERR");
    INT_CLR_RD_SLVERR.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(1),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    INT_CLR_WR_SLVERR = uvm_reg_field::type_id::create("INT_CLR_WR_SLVERR");
    INT_CLR_WR_SLVERR.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(1),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    INT_CLR_OVERFLOW = uvm_reg_field::type_id::create("INT_CLR_OVERFLOW");
    INT_CLR_OVERFLOW.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(1),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    INT_CLR_OVERFLOW = uvm_reg_field::type_id::create("INT_CLR_OVERFLOW");
    INT_CLR_OVERFLOW.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(1),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    INT_CLR_TIMEOUT_RD = uvm_reg_field::type_id::create("INT_CLR_TIMEOUT_RD");
    INT_CLR_TIMEOUT_RD.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(1),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    INT_CLR_TIMEOUT_WR = uvm_reg_field::type_id::create("INT_CLR_TIMEOUT_WR");
    INT_CLR_TIMEOUT_WR.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(1),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    INT_CLR_WDT = uvm_reg_field::type_id::create("INT_CLR_WDT");
    INT_CLR_WDT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(1),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
  endfunction
endclass

class INT_ENABLE_REG extends uvm_reg;
  `uvm_object_utils(INT_ENABLE_REG)

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "INT_ENABLE_REG");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  //---------------------------------------
    rand uvm_reg_field INT_ENABLE_CH_END;
    rand uvm_reg_field INT_ENABLE_RD_SLVERR;
    rand uvm_reg_field INT_ENABLE_WR_SLVERR;
    rand uvm_reg_field INT_ENABLE_OVERFLOW;
    rand uvm_reg_field INT_ENABLE_OVERFLOW;
    rand uvm_reg_field INT_ENABLE_TIMEOUT_RD;
    rand uvm_reg_field INT_ENABLE_TIMEOUT_WR;
    rand uvm_reg_field INT_ENABLE_WDT;
  //---------------------------------------
  function void build;
    INT_ENABLE_CH_END = uvm_reg_field::type_id::create("INT_ENABLE_CH_END");
    INT_ENABLE_CH_END.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    INT_ENABLE_RD_SLVERR = uvm_reg_field::type_id::create("INT_ENABLE_RD_SLVERR");
    INT_ENABLE_RD_SLVERR.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    INT_ENABLE_WR_SLVERR = uvm_reg_field::type_id::create("INT_ENABLE_WR_SLVERR");
    INT_ENABLE_WR_SLVERR.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    INT_ENABLE_OVERFLOW = uvm_reg_field::type_id::create("INT_ENABLE_OVERFLOW");
    INT_ENABLE_OVERFLOW.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    INT_ENABLE_OVERFLOW = uvm_reg_field::type_id::create("INT_ENABLE_OVERFLOW");
    INT_ENABLE_OVERFLOW.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    INT_ENABLE_TIMEOUT_RD = uvm_reg_field::type_id::create("INT_ENABLE_TIMEOUT_RD");
    INT_ENABLE_TIMEOUT_RD.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    INT_ENABLE_TIMEOUT_WR = uvm_reg_field::type_id::create("INT_ENABLE_TIMEOUT_WR");
    INT_ENABLE_TIMEOUT_WR.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    INT_ENABLE_WDT = uvm_reg_field::type_id::create("INT_ENABLE_WDT");
    INT_ENABLE_WDT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
  endfunction
endclass

class INT_STATUS_REG extends uvm_reg;
  `uvm_object_utils(INT_STATUS_REG)

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "INT_STATUS_REG");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  //---------------------------------------
    rand uvm_reg_field INT_STATUS_CH_END;
    rand uvm_reg_field INT_STATUS_RD_SLVERR;
    rand uvm_reg_field INT_STATUS_WR_SLVERR;
    rand uvm_reg_field INT_STATUS_OVERFLOW;
    rand uvm_reg_field INT_STATUS_UNDERFLOW;
    rand uvm_reg_field INT_STATUS_TIMEOUT_RD;
    rand uvm_reg_field INT_STATUS_TIMEOUT_WR;
    rand uvm_reg_field INT_STATUS_WDT;
  //---------------------------------------
  function void build;
    INT_STATUS_CH_END = uvm_reg_field::type_id::create("INT_STATUS_CH_END");
    INT_STATUS_CH_END.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    INT_STATUS_RD_SLVERR = uvm_reg_field::type_id::create("INT_STATUS_RD_SLVERR");
    INT_STATUS_RD_SLVERR.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    INT_STATUS_WR_SLVERR = uvm_reg_field::type_id::create("INT_STATUS_WR_SLVERR");
    INT_STATUS_WR_SLVERR.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    INT_STATUS_OVERFLOW = uvm_reg_field::type_id::create("INT_STATUS_OVERFLOW");
    INT_STATUS_OVERFLOW.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    INT_STATUS_UNDERFLOW = uvm_reg_field::type_id::create("INT_STATUS_UNDERFLOW");
    INT_STATUS_UNDERFLOW.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    INT_STATUS_TIMEOUT_RD = uvm_reg_field::type_id::create("INT_STATUS_TIMEOUT_RD");
    INT_STATUS_TIMEOUT_RD.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    INT_STATUS_TIMEOUT_WR = uvm_reg_field::type_id::create("INT_STATUS_TIMEOUT_WR");
    INT_STATUS_TIMEOUT_WR.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    INT_STATUS_WDT = uvm_reg_field::type_id::create("INT_STATUS_WDT");
    INT_STATUS_WDT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
  endfunction
endclass

class INT0_STATUS extends uvm_reg;
  `uvm_object_utils(INT0_STATUS)

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "INT0_STATUS");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  //---------------------------------------
    rand uvm_reg_field CORE0_CH0_INT0_STAT;
    rand uvm_reg_field CORE0_CH1_INT0_STAT;
    rand uvm_reg_field CORE0_CH2_INT0_STAT;
    rand uvm_reg_field CORE0_CH3_INT0_STAT;
    rand uvm_reg_field CORE0_CH4_INT0_STAT;
    rand uvm_reg_field CORE0_CH5_INT0_STAT;
    rand uvm_reg_field CORE0_CH6_INT0_STAT;
    rand uvm_reg_field CORE0_CH7_INT0_STAT;
    rand uvm_reg_field CORE1_CH0_INT0_STAT;
    rand uvm_reg_field CORE1_CH1_INT0_STAT;
    rand uvm_reg_field CORE1_CH2_INT0_STAT;
    rand uvm_reg_field CORE1_CH3_INT0_STAT;
    rand uvm_reg_field CORE1_CH4_INT0_STAT;
    rand uvm_reg_field CORE1_CH5_INT0_STAT;
    rand uvm_reg_field CORE1_CH6_INT0_STAT;
    rand uvm_reg_field CORE1_CH7_INT0_STAT;
  //---------------------------------------
  function void build;
    CORE0_CH0_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH0_INT0_STAT");
    CORE0_CH0_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH1_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH1_INT0_STAT");
    CORE0_CH1_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH2_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH2_INT0_STAT");
    CORE0_CH2_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH3_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH3_INT0_STAT");
    CORE0_CH3_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH4_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH4_INT0_STAT");
    CORE0_CH4_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH5_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH5_INT0_STAT");
    CORE0_CH5_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH6_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH6_INT0_STAT");
    CORE0_CH6_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH7_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH7_INT0_STAT");
    CORE0_CH7_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH0_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH0_INT0_STAT");
    CORE1_CH0_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH1_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH1_INT0_STAT");
    CORE1_CH1_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH2_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH2_INT0_STAT");
    CORE1_CH2_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH3_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH3_INT0_STAT");
    CORE1_CH3_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH4_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH4_INT0_STAT");
    CORE1_CH4_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH5_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH5_INT0_STAT");
    CORE1_CH5_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH6_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH6_INT0_STAT");
    CORE1_CH6_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH7_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH7_INT0_STAT");
    CORE1_CH7_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
  endfunction
endclass

class INT1_STATUS extends uvm_reg;
  `uvm_object_utils(INT1_STATUS)

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "INT1_STATUS");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  //---------------------------------------
    rand uvm_reg_field CORE0_CH0_INT0_STAT;
    rand uvm_reg_field CORE0_CH1_INT0_STAT;
    rand uvm_reg_field CORE0_CH2_INT0_STAT;
    rand uvm_reg_field CORE0_CH3_INT0_STAT;
    rand uvm_reg_field CORE0_CH4_INT0_STAT;
    rand uvm_reg_field CORE0_CH5_INT0_STAT;
    rand uvm_reg_field CORE0_CH6_INT0_STAT;
    rand uvm_reg_field CORE0_CH7_INT0_STAT;
    rand uvm_reg_field CORE1_CH0_INT0_STAT;
    rand uvm_reg_field CORE1_CH1_INT0_STAT;
    rand uvm_reg_field CORE1_CH2_INT0_STAT;
    rand uvm_reg_field CORE1_CH3_INT0_STAT;
    rand uvm_reg_field CORE1_CH4_INT0_STAT;
    rand uvm_reg_field CORE1_CH5_INT0_STAT;
    rand uvm_reg_field CORE1_CH6_INT0_STAT;
    rand uvm_reg_field CORE1_CH7_INT0_STAT;
  //---------------------------------------
  function void build;
    CORE0_CH0_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH0_INT0_STAT");
    CORE0_CH0_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH1_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH1_INT0_STAT");
    CORE0_CH1_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH2_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH2_INT0_STAT");
    CORE0_CH2_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH3_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH3_INT0_STAT");
    CORE0_CH3_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH4_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH4_INT0_STAT");
    CORE0_CH4_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH5_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH5_INT0_STAT");
    CORE0_CH5_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH6_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH6_INT0_STAT");
    CORE0_CH6_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH7_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH7_INT0_STAT");
    CORE0_CH7_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH0_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH0_INT0_STAT");
    CORE1_CH0_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH1_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH1_INT0_STAT");
    CORE1_CH1_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH2_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH2_INT0_STAT");
    CORE1_CH2_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH3_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH3_INT0_STAT");
    CORE1_CH3_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH4_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH4_INT0_STAT");
    CORE1_CH4_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH5_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH5_INT0_STAT");
    CORE1_CH5_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH6_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH6_INT0_STAT");
    CORE1_CH6_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH7_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH7_INT0_STAT");
    CORE1_CH7_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
  endfunction
endclass

class INT2_STATUS extends uvm_reg;
  `uvm_object_utils(INT2_STATUS)

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "INT2_STATUS");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  //---------------------------------------
    rand uvm_reg_field CORE0_CH0_INT0_STAT;
    rand uvm_reg_field CORE0_CH1_INT0_STAT;
    rand uvm_reg_field CORE0_CH2_INT0_STAT;
    rand uvm_reg_field CORE0_CH3_INT0_STAT;
    rand uvm_reg_field CORE0_CH4_INT0_STAT;
    rand uvm_reg_field CORE0_CH5_INT0_STAT;
    rand uvm_reg_field CORE0_CH6_INT0_STAT;
    rand uvm_reg_field CORE0_CH7_INT0_STAT;
    rand uvm_reg_field CORE1_CH0_INT0_STAT;
    rand uvm_reg_field CORE1_CH1_INT0_STAT;
    rand uvm_reg_field CORE1_CH2_INT0_STAT;
    rand uvm_reg_field CORE1_CH3_INT0_STAT;
    rand uvm_reg_field CORE1_CH4_INT0_STAT;
    rand uvm_reg_field CORE1_CH5_INT0_STAT;
    rand uvm_reg_field CORE1_CH6_INT0_STAT;
    rand uvm_reg_field CORE1_CH7_INT0_STAT;
  //---------------------------------------
  function void build;
    CORE0_CH0_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH0_INT0_STAT");
    CORE0_CH0_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH1_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH1_INT0_STAT");
    CORE0_CH1_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH2_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH2_INT0_STAT");
    CORE0_CH2_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH3_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH3_INT0_STAT");
    CORE0_CH3_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH4_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH4_INT0_STAT");
    CORE0_CH4_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH5_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH5_INT0_STAT");
    CORE0_CH5_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH6_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH6_INT0_STAT");
    CORE0_CH6_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH7_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH7_INT0_STAT");
    CORE0_CH7_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH0_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH0_INT0_STAT");
    CORE1_CH0_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH1_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH1_INT0_STAT");
    CORE1_CH1_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH2_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH2_INT0_STAT");
    CORE1_CH2_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH3_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH3_INT0_STAT");
    CORE1_CH3_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH4_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH4_INT0_STAT");
    CORE1_CH4_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH5_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH5_INT0_STAT");
    CORE1_CH5_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH6_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH6_INT0_STAT");
    CORE1_CH6_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH7_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH7_INT0_STAT");
    CORE1_CH7_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
  endfunction
endclass

class INT3_STATUS extends uvm_reg;
  `uvm_object_utils(INT3_STATUS)

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "INT3_STATUS");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  //---------------------------------------
    rand uvm_reg_field CORE0_CH0_INT0_STAT;
    rand uvm_reg_field CORE0_CH1_INT0_STAT;
    rand uvm_reg_field CORE0_CH2_INT0_STAT;
    rand uvm_reg_field CORE0_CH3_INT0_STAT;
    rand uvm_reg_field CORE0_CH4_INT0_STAT;
    rand uvm_reg_field CORE0_CH5_INT0_STAT;
    rand uvm_reg_field CORE0_CH6_INT0_STAT;
    rand uvm_reg_field CORE0_CH7_INT0_STAT;
    rand uvm_reg_field CORE1_CH0_INT0_STAT;
    rand uvm_reg_field CORE1_CH1_INT0_STAT;
    rand uvm_reg_field CORE1_CH2_INT0_STAT;
    rand uvm_reg_field CORE1_CH3_INT0_STAT;
    rand uvm_reg_field CORE1_CH4_INT0_STAT;
    rand uvm_reg_field CORE1_CH5_INT0_STAT;
    rand uvm_reg_field CORE1_CH6_INT0_STAT;
    rand uvm_reg_field CORE1_CH7_INT0_STAT;
  //---------------------------------------
  function void build;
    CORE0_CH0_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH0_INT0_STAT");
    CORE0_CH0_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH1_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH1_INT0_STAT");
    CORE0_CH1_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH2_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH2_INT0_STAT");
    CORE0_CH2_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH3_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH3_INT0_STAT");
    CORE0_CH3_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH4_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH4_INT0_STAT");
    CORE0_CH4_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH5_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH5_INT0_STAT");
    CORE0_CH5_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH6_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH6_INT0_STAT");
    CORE0_CH6_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH7_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH7_INT0_STAT");
    CORE0_CH7_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH0_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH0_INT0_STAT");
    CORE1_CH0_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH1_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH1_INT0_STAT");
    CORE1_CH1_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH2_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH2_INT0_STAT");
    CORE1_CH2_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH3_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH3_INT0_STAT");
    CORE1_CH3_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH4_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH4_INT0_STAT");
    CORE1_CH4_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH5_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH5_INT0_STAT");
    CORE1_CH5_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH6_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH6_INT0_STAT");
    CORE1_CH6_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH7_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH7_INT0_STAT");
    CORE1_CH7_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
  endfunction
endclass

class INT4_STATUS extends uvm_reg;
  `uvm_object_utils(INT4_STATUS)

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "INT4_STATUS");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  //---------------------------------------
    rand uvm_reg_field CORE0_CH0_INT0_STAT;
    rand uvm_reg_field CORE0_CH1_INT0_STAT;
    rand uvm_reg_field CORE0_CH2_INT0_STAT;
    rand uvm_reg_field CORE0_CH3_INT0_STAT;
    rand uvm_reg_field CORE0_CH4_INT0_STAT;
    rand uvm_reg_field CORE0_CH5_INT0_STAT;
    rand uvm_reg_field CORE0_CH6_INT0_STAT;
    rand uvm_reg_field CORE0_CH7_INT0_STAT;
    rand uvm_reg_field CORE1_CH0_INT0_STAT;
    rand uvm_reg_field CORE1_CH1_INT0_STAT;
    rand uvm_reg_field CORE1_CH2_INT0_STAT;
    rand uvm_reg_field CORE1_CH3_INT0_STAT;
    rand uvm_reg_field CORE1_CH4_INT0_STAT;
    rand uvm_reg_field CORE1_CH5_INT0_STAT;
    rand uvm_reg_field CORE1_CH6_INT0_STAT;
    rand uvm_reg_field CORE1_CH7_INT0_STAT;
  //---------------------------------------
  function void build;
    CORE0_CH0_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH0_INT0_STAT");
    CORE0_CH0_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH1_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH1_INT0_STAT");
    CORE0_CH1_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH2_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH2_INT0_STAT");
    CORE0_CH2_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH3_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH3_INT0_STAT");
    CORE0_CH3_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH4_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH4_INT0_STAT");
    CORE0_CH4_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH5_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH5_INT0_STAT");
    CORE0_CH5_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH6_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH6_INT0_STAT");
    CORE0_CH6_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH7_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH7_INT0_STAT");
    CORE0_CH7_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH0_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH0_INT0_STAT");
    CORE1_CH0_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH1_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH1_INT0_STAT");
    CORE1_CH1_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH2_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH2_INT0_STAT");
    CORE1_CH2_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH3_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH3_INT0_STAT");
    CORE1_CH3_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH4_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH4_INT0_STAT");
    CORE1_CH4_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH5_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH5_INT0_STAT");
    CORE1_CH5_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH6_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH6_INT0_STAT");
    CORE1_CH6_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH7_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH7_INT0_STAT");
    CORE1_CH7_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
  endfunction
endclass

class INT5_STATUS extends uvm_reg;
  `uvm_object_utils(INT5_STATUS)

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "INT5_STATUS");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  //---------------------------------------
    rand uvm_reg_field CORE0_CH0_INT0_STAT;
    rand uvm_reg_field CORE0_CH1_INT0_STAT;
    rand uvm_reg_field CORE0_CH2_INT0_STAT;
    rand uvm_reg_field CORE0_CH3_INT0_STAT;
    rand uvm_reg_field CORE0_CH4_INT0_STAT;
    rand uvm_reg_field CORE0_CH5_INT0_STAT;
    rand uvm_reg_field CORE0_CH6_INT0_STAT;
    rand uvm_reg_field CORE0_CH7_INT0_STAT;
    rand uvm_reg_field CORE1_CH0_INT0_STAT;
    rand uvm_reg_field CORE1_CH1_INT0_STAT;
    rand uvm_reg_field CORE1_CH2_INT0_STAT;
    rand uvm_reg_field CORE1_CH3_INT0_STAT;
    rand uvm_reg_field CORE1_CH4_INT0_STAT;
    rand uvm_reg_field CORE1_CH5_INT0_STAT;
    rand uvm_reg_field CORE1_CH6_INT0_STAT;
    rand uvm_reg_field CORE1_CH7_INT0_STAT;
  //---------------------------------------
  function void build;
    CORE0_CH0_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH0_INT0_STAT");
    CORE0_CH0_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH1_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH1_INT0_STAT");
    CORE0_CH1_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH2_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH2_INT0_STAT");
    CORE0_CH2_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH3_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH3_INT0_STAT");
    CORE0_CH3_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH4_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH4_INT0_STAT");
    CORE0_CH4_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH5_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH5_INT0_STAT");
    CORE0_CH5_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH6_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH6_INT0_STAT");
    CORE0_CH6_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH7_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH7_INT0_STAT");
    CORE0_CH7_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH0_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH0_INT0_STAT");
    CORE1_CH0_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH1_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH1_INT0_STAT");
    CORE1_CH1_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH2_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH2_INT0_STAT");
    CORE1_CH2_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH3_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH3_INT0_STAT");
    CORE1_CH3_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH4_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH4_INT0_STAT");
    CORE1_CH4_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH5_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH5_INT0_STAT");
    CORE1_CH5_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH6_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH6_INT0_STAT");
    CORE1_CH6_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH7_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH7_INT0_STAT");
    CORE1_CH7_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
  endfunction
endclass

class INT5_STATUS extends uvm_reg;
  `uvm_object_utils(INT5_STATUS)

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "INT5_STATUS");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  //---------------------------------------
    rand uvm_reg_field CORE0_CH0_INT0_STAT;
    rand uvm_reg_field CORE0_CH1_INT0_STAT;
    rand uvm_reg_field CORE0_CH2_INT0_STAT;
    rand uvm_reg_field CORE0_CH3_INT0_STAT;
    rand uvm_reg_field CORE0_CH4_INT0_STAT;
    rand uvm_reg_field CORE0_CH5_INT0_STAT;
    rand uvm_reg_field CORE0_CH6_INT0_STAT;
    rand uvm_reg_field CORE0_CH7_INT0_STAT;
    rand uvm_reg_field CORE1_CH0_INT0_STAT;
    rand uvm_reg_field CORE1_CH1_INT0_STAT;
    rand uvm_reg_field CORE1_CH2_INT0_STAT;
    rand uvm_reg_field CORE1_CH3_INT0_STAT;
    rand uvm_reg_field CORE1_CH4_INT0_STAT;
    rand uvm_reg_field CORE1_CH5_INT0_STAT;
    rand uvm_reg_field CORE1_CH6_INT0_STAT;
    rand uvm_reg_field CORE1_CH7_INT0_STAT;
  //---------------------------------------
  function void build;
    CORE0_CH0_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH0_INT0_STAT");
    CORE0_CH0_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH1_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH1_INT0_STAT");
    CORE0_CH1_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH2_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH2_INT0_STAT");
    CORE0_CH2_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH3_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH3_INT0_STAT");
    CORE0_CH3_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH4_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH4_INT0_STAT");
    CORE0_CH4_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH5_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH5_INT0_STAT");
    CORE0_CH5_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH6_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH6_INT0_STAT");
    CORE0_CH6_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH7_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH7_INT0_STAT");
    CORE0_CH7_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH0_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH0_INT0_STAT");
    CORE1_CH0_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH1_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH1_INT0_STAT");
    CORE1_CH1_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH2_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH2_INT0_STAT");
    CORE1_CH2_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH3_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH3_INT0_STAT");
    CORE1_CH3_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH4_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH4_INT0_STAT");
    CORE1_CH4_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH5_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH5_INT0_STAT");
    CORE1_CH5_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH6_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH6_INT0_STAT");
    CORE1_CH6_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH7_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH7_INT0_STAT");
    CORE1_CH7_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
  endfunction
endclass

class INT6_STATUS extends uvm_reg;
  `uvm_object_utils(INT6_STATUS)

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "INT6_STATUS");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  //---------------------------------------
    rand uvm_reg_field CORE0_CH0_INT0_STAT;
    rand uvm_reg_field CORE0_CH1_INT0_STAT;
    rand uvm_reg_field CORE0_CH2_INT0_STAT;
    rand uvm_reg_field CORE0_CH3_INT0_STAT;
    rand uvm_reg_field CORE0_CH4_INT0_STAT;
    rand uvm_reg_field CORE0_CH5_INT0_STAT;
    rand uvm_reg_field CORE0_CH6_INT0_STAT;
    rand uvm_reg_field CORE0_CH7_INT0_STAT;
    rand uvm_reg_field CORE1_CH0_INT0_STAT;
    rand uvm_reg_field CORE1_CH1_INT0_STAT;
    rand uvm_reg_field CORE1_CH2_INT0_STAT;
    rand uvm_reg_field CORE1_CH3_INT0_STAT;
    rand uvm_reg_field CORE1_CH4_INT0_STAT;
    rand uvm_reg_field CORE1_CH5_INT0_STAT;
    rand uvm_reg_field CORE1_CH6_INT0_STAT;
    rand uvm_reg_field CORE1_CH7_INT0_STAT;
  //---------------------------------------
  function void build;
    CORE0_CH0_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH0_INT0_STAT");
    CORE0_CH0_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH1_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH1_INT0_STAT");
    CORE0_CH1_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH2_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH2_INT0_STAT");
    CORE0_CH2_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH3_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH3_INT0_STAT");
    CORE0_CH3_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH4_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH4_INT0_STAT");
    CORE0_CH4_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH5_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH5_INT0_STAT");
    CORE0_CH5_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH6_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH6_INT0_STAT");
    CORE0_CH6_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH7_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH7_INT0_STAT");
    CORE0_CH7_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH0_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH0_INT0_STAT");
    CORE1_CH0_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH1_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH1_INT0_STAT");
    CORE1_CH1_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH2_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH2_INT0_STAT");
    CORE1_CH2_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH3_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH3_INT0_STAT");
    CORE1_CH3_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH4_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH4_INT0_STAT");
    CORE1_CH4_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH5_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH5_INT0_STAT");
    CORE1_CH5_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH6_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH6_INT0_STAT");
    CORE1_CH6_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH7_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH7_INT0_STAT");
    CORE1_CH7_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
  endfunction
endclass

class INT7_STATUS extends uvm_reg;
  `uvm_object_utils(INT7_STATUS)

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "INT7_STATUS");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  //---------------------------------------
    rand uvm_reg_field CORE0_CH0_INT0_STAT;
    rand uvm_reg_field CORE0_CH1_INT0_STAT;
    rand uvm_reg_field CORE0_CH2_INT0_STAT;
    rand uvm_reg_field CORE0_CH3_INT0_STAT;
    rand uvm_reg_field CORE0_CH4_INT0_STAT;
    rand uvm_reg_field CORE0_CH5_INT0_STAT;
    rand uvm_reg_field CORE0_CH6_INT0_STAT;
    rand uvm_reg_field CORE0_CH7_INT0_STAT;
    rand uvm_reg_field CORE1_CH0_INT0_STAT;
    rand uvm_reg_field CORE1_CH1_INT0_STAT;
    rand uvm_reg_field CORE1_CH2_INT0_STAT;
    rand uvm_reg_field CORE1_CH3_INT0_STAT;
    rand uvm_reg_field CORE1_CH4_INT0_STAT;
    rand uvm_reg_field CORE1_CH5_INT0_STAT;
    rand uvm_reg_field CORE1_CH6_INT0_STAT;
    rand uvm_reg_field CORE1_CH7_INT0_STAT;
  //---------------------------------------
  function void build;
    CORE0_CH0_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH0_INT0_STAT");
    CORE0_CH0_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH1_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH1_INT0_STAT");
    CORE0_CH1_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH2_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH2_INT0_STAT");
    CORE0_CH2_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH3_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH3_INT0_STAT");
    CORE0_CH3_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH4_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH4_INT0_STAT");
    CORE0_CH4_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH5_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH5_INT0_STAT");
    CORE0_CH5_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH6_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH6_INT0_STAT");
    CORE0_CH6_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_CH7_INT0_STAT = uvm_reg_field::type_id::create("CORE0_CH7_INT0_STAT");
    CORE0_CH7_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH0_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH0_INT0_STAT");
    CORE1_CH0_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH1_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH1_INT0_STAT");
    CORE1_CH1_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH2_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH2_INT0_STAT");
    CORE1_CH2_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH3_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH3_INT0_STAT");
    CORE1_CH3_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH4_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH4_INT0_STAT");
    CORE1_CH4_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH5_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH5_INT0_STAT");
    CORE1_CH5_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH6_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH6_INT0_STAT");
    CORE1_CH6_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_CH7_INT0_STAT = uvm_reg_field::type_id::create("CORE1_CH7_INT0_STAT");
    CORE1_CH7_INT0_STAT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
  endfunction
endclass

class CORE0_JOINT_MODE extends uvm_reg;
  `uvm_object_utils(CORE0_JOINT_MODE)

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "CORE0_JOINT_MODE");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  //---------------------------------------
    rand uvm_reg_field CORE0_JOINT_MODE;
  //---------------------------------------
  function void build;
    CORE0_JOINT_MODE = uvm_reg_field::type_id::create("CORE0_JOINT_MODE");
    CORE0_JOINT_MODE.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
  endfunction
endclass

class CORE1_JOINT_MODE extends uvm_reg;
  `uvm_object_utils(CORE1_JOINT_MODE)

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "CORE1_JOINT_MODE");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  //---------------------------------------
    rand uvm_reg_field CORE0_JOINT_MODE;
  //---------------------------------------
  function void build;
    CORE0_JOINT_MODE = uvm_reg_field::type_id::create("CORE0_JOINT_MODE");
    CORE0_JOINT_MODE.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
  endfunction
endclass

class CORE0_PRIORITY extends uvm_reg;
  `uvm_object_utils(CORE0_PRIORITY)

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "CORE0_PRIORITY");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  //---------------------------------------
    rand uvm_reg_field CORE0_RD_PRIO_TOP_NUM;
    rand uvm_reg_field CORE0_RD_PRIO_TOP;
    rand uvm_reg_field CORE0_RD_PRIO_HIGH_NUM;
    rand uvm_reg_field CORE0_RD_PRIO_HIGH;
    rand uvm_reg_field CORE0_WR_PRIO_TOP_NUM;
    rand uvm_reg_field CORE0_WR_PRIO_TOP;
    rand uvm_reg_field CORE0_WR_PRIO_HIGH_NUM;
    rand uvm_reg_field CORE0_WR_PRIO_HIGH;
  //---------------------------------------
  function void build;
    CORE0_RD_PRIO_TOP_NUM = uvm_reg_field::type_id::create("CORE0_RD_PRIO_TOP_NUM");
    CORE0_RD_PRIO_TOP_NUM.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(2),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_RD_PRIO_TOP = uvm_reg_field::type_id::create("CORE0_RD_PRIO_TOP");
    CORE0_RD_PRIO_TOP.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_RD_PRIO_HIGH_NUM = uvm_reg_field::type_id::create("CORE0_RD_PRIO_HIGH_NUM");
    CORE0_RD_PRIO_HIGH_NUM.configure(.parent(this),
                           .size(3),
                           .lsb_pos(4),
                           .msb_pos(6),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_RD_PRIO_HIGH = uvm_reg_field::type_id::create("CORE0_RD_PRIO_HIGH");
    CORE0_RD_PRIO_HIGH.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_WR_PRIO_TOP_NUM = uvm_reg_field::type_id::create("CORE0_WR_PRIO_TOP_NUM");
    CORE0_WR_PRIO_TOP_NUM.configure(.parent(this),
                           .size(3),
                           .lsb_pos(8),
                           .msb_pos(10),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_WR_PRIO_TOP = uvm_reg_field::type_id::create("CORE0_WR_PRIO_TOP");
    CORE0_WR_PRIO_TOP.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_WR_PRIO_HIGH_NUM = uvm_reg_field::type_id::create("CORE0_WR_PRIO_HIGH_NUM");
    CORE0_WR_PRIO_HIGH_NUM.configure(.parent(this),
                           .size(3),
                           .lsb_pos(12),
                           .msb_pos(14),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE0_WR_PRIO_HIGH = uvm_reg_field::type_id::create("CORE0_WR_PRIO_HIGH");
    CORE0_WR_PRIO_HIGH.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
  endfunction
endclass

class CORE1_PRIORITY extends uvm_reg;
  `uvm_object_utils(CORE1_PRIORITY)

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "CORE1_PRIORITY");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  //---------------------------------------
    rand uvm_reg_field CORE1_RD_PRIO_TOP_NUM;
    rand uvm_reg_field CORE1_RD_PRIO_TOP;
    rand uvm_reg_field CORE1_RD_PRIO_HIGH_NUM;
    rand uvm_reg_field CORE1_RD_PRIO_HIGH;
    rand uvm_reg_field CORE1_WR_PRIO_TOP_NUM;
    rand uvm_reg_field CORE1_WR_PRIO_TOP;
    rand uvm_reg_field CORE1_WR_PRIO_HIGH_NUM;
    rand uvm_reg_field CORE1_WR_PRIO_HIGH;
  //---------------------------------------
  function void build;
    CORE1_RD_PRIO_TOP_NUM = uvm_reg_field::type_id::create("CORE1_RD_PRIO_TOP_NUM");
    CORE1_RD_PRIO_TOP_NUM.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(2),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_RD_PRIO_TOP = uvm_reg_field::type_id::create("CORE1_RD_PRIO_TOP");
    CORE1_RD_PRIO_TOP.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_RD_PRIO_HIGH_NUM = uvm_reg_field::type_id::create("CORE1_RD_PRIO_HIGH_NUM");
    CORE1_RD_PRIO_HIGH_NUM.configure(.parent(this),
                           .size(3),
                           .lsb_pos(4),
                           .msb_pos(6),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_RD_PRIO_HIGH = uvm_reg_field::type_id::create("CORE1_RD_PRIO_HIGH");
    CORE1_RD_PRIO_HIGH.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_WR_PRIO_TOP_NUM = uvm_reg_field::type_id::create("CORE1_WR_PRIO_TOP_NUM");
    CORE1_WR_PRIO_TOP_NUM.configure(.parent(this),
                           .size(3),
                           .lsb_pos(8),
                           .msb_pos(10),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_WR_PRIO_TOP = uvm_reg_field::type_id::create("CORE1_WR_PRIO_TOP");
    CORE1_WR_PRIO_TOP.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_WR_PRIO_HIGH_NUM = uvm_reg_field::type_id::create("CORE1_WR_PRIO_HIGH_NUM");
    CORE1_WR_PRIO_HIGH_NUM.configure(.parent(this),
                           .size(3),
                           .lsb_pos(12),
                           .msb_pos(14),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    CORE1_WR_PRIO_HIGH = uvm_reg_field::type_id::create("CORE1_WR_PRIO_HIGH");
    CORE1_WR_PRIO_HIGH.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
  endfunction
endclass

class CORE1_CLKDIV extends uvm_reg;
  `uvm_object_utils(CORE1_CLKDIV)

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "CORE1_CLKDIV");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  //---------------------------------------
    rand uvm_reg_field CORE1_CLKDIV_RATIO;
  //---------------------------------------
  function void build;
    CORE1_CLKDIV_RATIO = uvm_reg_field::type_id::create("CORE1_CLKDIV_RATIO");
    CORE1_CLKDIV_RATIO.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(3),
                           .access("W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
  endfunction
endclass

class CORE0_CH_START extends uvm_reg;
  `uvm_object_utils(CORE0_CH_START)

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "CORE0_CH_START");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  //---------------------------------------
    rand uvm_reg_field CORE0_CHANNEL_START;
  //---------------------------------------
  function void build;
    CORE0_CHANNEL_START = uvm_reg_field::type_id::create("CORE0_CHANNEL_START");
    CORE0_CHANNEL_START.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(7),
                           .access("W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
  endfunction
endclass

class CORE1_CH_START extends uvm_reg;
  `uvm_object_utils(CORE1_CH_START)

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "CORE1_CH_START");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  //---------------------------------------
    rand uvm_reg_field CORE1_CHANNEL_START;
  //---------------------------------------
  function void build;
    CORE1_CHANNEL_START = uvm_reg_field::type_id::create("CORE1_CHANNEL_START");
    CORE1_CHANNEL_START.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(7),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
  endfunction
endclass

class PERIPH_RX_CTRL extends uvm_reg;
  `uvm_object_utils(PERIPH_RX_CTRL)

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "PERIPH_RX_CTRL");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  //---------------------------------------
    rand uvm_reg_field PERIPH_RX_REQ;
  //---------------------------------------
  function void build;
    PERIPH_RX_REQ = uvm_reg_field::type_id::create("PERIPH_RX_REQ");
    PERIPH_RX_REQ.configure(.parent(this),
                           .size(31),
                           .lsb_pos(1),
                           .msb_pos(31),
                           .access("R/W"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
  endfunction
endclass

class PERIPH_TX_CTRL extends uvm_reg;
  `uvm_object_utils(PERIPH_TX_CTRL)

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "PERIPH_TX_CTRL");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  //---------------------------------------
    rand uvm_reg_field PERIPH_TX_REQ;
  //---------------------------------------
  function void build;
    PERIPH_TX_REQ = uvm_reg_field::type_id::create("PERIPH_TX_REQ");
    PERIPH_TX_REQ.configure(.parent(this),
                           .size(31),
                           .lsb_pos(1),
                           .msb_pos(31),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
  endfunction
endclass

class IDLE extends uvm_reg;
  `uvm_object_utils(IDLE)

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "IDLE");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  //---------------------------------------
    rand uvm_reg_field IDLE;
  //---------------------------------------
  function void build;
    IDLE = uvm_reg_field::type_id::create("IDLE");
    IDLE.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
  endfunction
endclass

class USER_DEF_STATUS extends uvm_reg;
  `uvm_object_utils(USER_DEF_STATUS)

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "USER_DEF_STATUS");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  //---------------------------------------
    rand uvm_reg_field USER_DEF_INT_NUM;
    rand uvm_reg_field USER_DEF_CORE1_CLKDIV;
    rand uvm_reg_field USER_DEF_DUAL_CORE;
    rand uvm_reg_field USER_DEF_IC;
    rand uvm_reg_field USER_DEF_IC_DUAL_PORT;
    rand uvm_reg_field USER_DEF_CLKGATE;
    rand uvm_reg_field USER_DEF_PORT0_MUX;
    rand uvm_reg_field USER_DEF_PORT1_MUX;
  //---------------------------------------
  function void build;
    USER_DEF_INT_NUM = uvm_reg_field::type_id::create("USER_DEF_INT_NUM");
    USER_DEF_INT_NUM.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(3),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    USER_DEF_CORE1_CLKDIV = uvm_reg_field::type_id::create("USER_DEF_CORE1_CLKDIV");
    USER_DEF_CORE1_CLKDIV.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    USER_DEF_DUAL_CORE = uvm_reg_field::type_id::create("USER_DEF_DUAL_CORE");
    USER_DEF_DUAL_CORE.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    USER_DEF_IC = uvm_reg_field::type_id::create("USER_DEF_IC");
    USER_DEF_IC.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    USER_DEF_IC_DUAL_PORT = uvm_reg_field::type_id::create("USER_DEF_IC_DUAL_PORT");
    USER_DEF_IC_DUAL_PORT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    USER_DEF_CLKGATE = uvm_reg_field::type_id::create("USER_DEF_CLKGATE");
    USER_DEF_CLKGATE.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    USER_DEF_PORT0_MUX = uvm_reg_field::type_id::create("USER_DEF_PORT0_MUX");
    USER_DEF_PORT0_MUX.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    USER_DEF_PORT1_MUX = uvm_reg_field::type_id::create("USER_DEF_PORT1_MUX");
    USER_DEF_PORT1_MUX.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
  endfunction
endclass

class USER_CORE0_DEF_STATUS0 extends uvm_reg;
  `uvm_object_utils(USER_CORE0_DEF_STATUS0)

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "USER_CORE0_DEF_STATUS0");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  //---------------------------------------
    rand uvm_reg_field USER_DEF_CORE0_CH_NUM;
    rand uvm_reg_field USER_DEF_CORE0_FIFO_SIZE;
    rand uvm_reg_field USER_DEF_CORE0_WCMD_DEPTH;
    rand uvm_reg_field USER_DEF_CORE0_AHB_32;
    rand uvm_reg_field USER_DEF_CORE0_ADDR_BITS;
    rand uvm_reg_field USER_DEF_CORE0_BUFF_BITS;
  //---------------------------------------
  function void build;
    USER_DEF_CORE0_CH_NUM = uvm_reg_field::type_id::create("USER_DEF_CORE0_CH_NUM");
    USER_DEF_CORE0_CH_NUM.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(3),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    USER_DEF_CORE0_FIFO_SIZE = uvm_reg_field::type_id::create("USER_DEF_CORE0_FIFO_SIZE");
    USER_DEF_CORE0_FIFO_SIZE.configure(.parent(this),
                           .size(4),
                           .lsb_pos(4),
                           .msb_pos(7),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    USER_DEF_CORE0_WCMD_DEPTH = uvm_reg_field::type_id::create("USER_DEF_CORE0_WCMD_DEPTH");
    USER_DEF_CORE0_WCMD_DEPTH.configure(.parent(this),
                           .size(4),
                           .lsb_pos(8),
                           .msb_pos(11),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    USER_DEF_CORE0_AHB_32 = uvm_reg_field::type_id::create("USER_DEF_CORE0_AHB_32");
    USER_DEF_CORE0_AHB_32.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    USER_DEF_CORE0_ADDR_BITS = uvm_reg_field::type_id::create("USER_DEF_CORE0_ADDR_BITS");
    USER_DEF_CORE0_ADDR_BITS.configure(.parent(this),
                           .size(6),
                           .lsb_pos(16),
                           .msb_pos(21),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    USER_DEF_CORE0_BUFF_BITS = uvm_reg_field::type_id::create("USER_DEF_CORE0_BUFF_BITS");
    USER_DEF_CORE0_BUFF_BITS.configure(.parent(this),
                           .size(5),
                           .lsb_pos(24),
                           .msb_pos(28),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
  endfunction
endclass

class USER_CORE0_DEF_STATUS1 extends uvm_reg;
  `uvm_object_utils(USER_CORE0_DEF_STATUS1)

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "USER_CORE0_DEF_STATUS1");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  //---------------------------------------
    rand uvm_reg_field USER_DEF_CORE0_WDT;
    rand uvm_reg_field USER_DEF_CORE0_TIMEOUT;
    rand uvm_reg_field USER_DEF_CORE0_TOKENS;
    rand uvm_reg_field USER_DEF_CORE0_PRIO;
    rand uvm_reg_field USER_DEF_CORE0_OUTS;
    rand uvm_reg_field USER_DEF_CORE0_WAIT;
    rand uvm_reg_field USER_DEF_CORE0_BLOCK;
    rand uvm_reg_field USER_DEF_CORE0_JOINT;
    rand uvm_reg_field USER_DEF_CORE0_INDEPENDENT;
    rand uvm_reg_field USER_DEF_CORE0_PERIPH;
    rand uvm_reg_field USER_DEF_CORE0_LISTS;
    rand uvm_reg_field USER_DEF_CORE0_END;
  //---------------------------------------
  function void build;
    USER_DEF_CORE0_WDT = uvm_reg_field::type_id::create("USER_DEF_CORE0_WDT");
    USER_DEF_CORE0_WDT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    USER_DEF_CORE0_TIMEOUT = uvm_reg_field::type_id::create("USER_DEF_CORE0_TIMEOUT");
    USER_DEF_CORE0_TIMEOUT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    USER_DEF_CORE0_TOKENS = uvm_reg_field::type_id::create("USER_DEF_CORE0_TOKENS");
    USER_DEF_CORE0_TOKENS.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    USER_DEF_CORE0_PRIO = uvm_reg_field::type_id::create("USER_DEF_CORE0_PRIO");
    USER_DEF_CORE0_PRIO.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    USER_DEF_CORE0_OUTS = uvm_reg_field::type_id::create("USER_DEF_CORE0_OUTS");
    USER_DEF_CORE0_OUTS.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    USER_DEF_CORE0_WAIT = uvm_reg_field::type_id::create("USER_DEF_CORE0_WAIT");
    USER_DEF_CORE0_WAIT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    USER_DEF_CORE0_BLOCK = uvm_reg_field::type_id::create("USER_DEF_CORE0_BLOCK");
    USER_DEF_CORE0_BLOCK.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    USER_DEF_CORE0_JOINT = uvm_reg_field::type_id::create("USER_DEF_CORE0_JOINT");
    USER_DEF_CORE0_JOINT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    USER_DEF_CORE0_INDEPENDENT = uvm_reg_field::type_id::create("USER_DEF_CORE0_INDEPENDENT");
    USER_DEF_CORE0_INDEPENDENT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    USER_DEF_CORE0_PERIPH = uvm_reg_field::type_id::create("USER_DEF_CORE0_PERIPH");
    USER_DEF_CORE0_PERIPH.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    USER_DEF_CORE0_LISTS = uvm_reg_field::type_id::create("USER_DEF_CORE0_LISTS");
    USER_DEF_CORE0_LISTS.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    USER_DEF_CORE0_END = uvm_reg_field::type_id::create("USER_DEF_CORE0_END");
    USER_DEF_CORE0_END.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
  endfunction
endclass

class USER_CORE1_DEF_STATUS0 extends uvm_reg;
  `uvm_object_utils(USER_CORE1_DEF_STATUS0)

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "USER_CORE1_DEF_STATUS0");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  //---------------------------------------
    rand uvm_reg_field USER_DEF_CORE1_CH_NUM;
    rand uvm_reg_field USER_DEF_CORE1_FIFO_SIZE;
    rand uvm_reg_field USER_DEF_CORE1_WCMD_DEPTH;
    rand uvm_reg_field USER_DEF_CORE1_AHB_32;
    rand uvm_reg_field USER_DEF_CORE1_ADDR_BITS;
    rand uvm_reg_field USER_DEF_CORE1_BUFF_BITS;
  //---------------------------------------
  function void build;
    USER_DEF_CORE1_CH_NUM = uvm_reg_field::type_id::create("USER_DEF_CORE1_CH_NUM");
    USER_DEF_CORE1_CH_NUM.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(3),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    USER_DEF_CORE1_FIFO_SIZE = uvm_reg_field::type_id::create("USER_DEF_CORE1_FIFO_SIZE");
    USER_DEF_CORE1_FIFO_SIZE.configure(.parent(this),
                           .size(4),
                           .lsb_pos(4),
                           .msb_pos(7),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    USER_DEF_CORE1_WCMD_DEPTH = uvm_reg_field::type_id::create("USER_DEF_CORE1_WCMD_DEPTH");
    USER_DEF_CORE1_WCMD_DEPTH.configure(.parent(this),
                           .size(4),
                           .lsb_pos(8),
                           .msb_pos(11),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    USER_DEF_CORE1_AHB_32 = uvm_reg_field::type_id::create("USER_DEF_CORE1_AHB_32");
    USER_DEF_CORE1_AHB_32.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    USER_DEF_CORE1_ADDR_BITS = uvm_reg_field::type_id::create("USER_DEF_CORE1_ADDR_BITS");
    USER_DEF_CORE1_ADDR_BITS.configure(.parent(this),
                           .size(6),
                           .lsb_pos(16),
                           .msb_pos(21),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    USER_DEF_CORE1_BUFF_BITS = uvm_reg_field::type_id::create("USER_DEF_CORE1_BUFF_BITS");
    USER_DEF_CORE1_BUFF_BITS.configure(.parent(this),
                           .size(5),
                           .lsb_pos(24),
                           .msb_pos(28),
                           .access("R"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
  endfunction
endclass

class USER_CORE1_DEF_STATUS1 extends uvm_reg;
  `uvm_object_utils(USER_CORE1_DEF_STATUS1)

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new(string name = "USER_CORE1_DEF_STATUS1");
    super.new(name, 32, UVM_NO_COVERAGE);
  endfunction

  //---------------------------------------
    rand uvm_reg_field USER_DEF_CORE1_WDT;
    USER_DEF_CORE1_WDT = uvm_reg_field::type_id::create("USER_DEF_CORE1_WDT");
    USER_DEF_CORE1_WDT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("nan"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    rand uvm_reg_field USER_DEF_CORE1_TIMEOUT;
    USER_DEF_CORE1_TIMEOUT = uvm_reg_field::type_id::create("USER_DEF_CORE1_TIMEOUT");
    USER_DEF_CORE1_TIMEOUT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("nan"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    rand uvm_reg_field USER_DEF_CORE1_TOKENS;
    USER_DEF_CORE1_TOKENS = uvm_reg_field::type_id::create("USER_DEF_CORE1_TOKENS");
    USER_DEF_CORE1_TOKENS.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("nan"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    rand uvm_reg_field USER_DEF_CORE1_PRIO;
    USER_DEF_CORE1_PRIO = uvm_reg_field::type_id::create("USER_DEF_CORE1_PRIO");
    USER_DEF_CORE1_PRIO.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("nan"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    rand uvm_reg_field USER_DEF_CORE1_OUTS;
    USER_DEF_CORE1_OUTS = uvm_reg_field::type_id::create("USER_DEF_CORE1_OUTS");
    USER_DEF_CORE1_OUTS.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("nan"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    rand uvm_reg_field USER_DEF_CORE1_WAIT;
    USER_DEF_CORE1_WAIT = uvm_reg_field::type_id::create("USER_DEF_CORE1_WAIT");
    USER_DEF_CORE1_WAIT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("nan"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    rand uvm_reg_field USER_DEF_CORE1_BLOCK;
    USER_DEF_CORE1_BLOCK = uvm_reg_field::type_id::create("USER_DEF_CORE1_BLOCK");
    USER_DEF_CORE1_BLOCK.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("nan"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    rand uvm_reg_field USER_DEF_CORE1_JOINT;
    USER_DEF_CORE1_JOINT = uvm_reg_field::type_id::create("USER_DEF_CORE1_JOINT");
    USER_DEF_CORE1_JOINT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("nan"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    rand uvm_reg_field USER_DEF_CORE1_INDEPENDENT;
    USER_DEF_CORE1_INDEPENDENT = uvm_reg_field::type_id::create("USER_DEF_CORE1_INDEPENDENT");
    USER_DEF_CORE1_INDEPENDENT.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("nan"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    rand uvm_reg_field USER_DEF_CORE1_PERIPH;
    USER_DEF_CORE1_PERIPH = uvm_reg_field::type_id::create("USER_DEF_CORE1_PERIPH");
    USER_DEF_CORE1_PERIPH.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("nan"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    rand uvm_reg_field USER_DEF_CORE1_LISTS;
    USER_DEF_CORE1_LISTS = uvm_reg_field::type_id::create("USER_DEF_CORE1_LISTS");
    USER_DEF_CORE1_LISTS.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("nan"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
    rand uvm_reg_field USER_DEF_CORE1_END;
    USER_DEF_CORE1_END = uvm_reg_field::type_id::create("USER_DEF_CORE1_END");
    USER_DEF_CORE1_END.configure(.parent(this),
                           .size(1),
                           .lsb_pos(0),
                           .msb_pos(0),
                           .access("nan"),
                           .volatile(0),
                           .reset(0),
                           .has_reset(1),
                           .is_rand(1),
                           .individually_accessible(0));
  endfunction
endclass

//-------------------------------------------------------------------------
//	Register Block Definition
//-------------------------------------------------------------------------
class dma_reg_model extends uvm_reg_block;
  `uvm_object_utils(dma_reg_model)

  //---------------------------------------
  // Register Instances
  //---------------------------------------
  rand CMD_REG0 reg_cmd_reg0;
  rand CMD_REG1 reg_cmd_reg1;
  rand CMD_REG2 reg_cmd_reg2;
  rand  reg_;
  rand CMD_REG3 reg_cmd_reg3;
  rand STATIC_REG0 reg_static_reg0;
  rand STATIC_REG1 reg_static_reg1;
  rand STATIC_REG2 reg_static_reg2;
  rand STATIC_REG3 reg_static_reg3;
  rand STATIC_REG4 reg_static_reg4;
  rand RESTRICT_REG reg_restrict_reg;
  rand READ_OFFSET_REG reg_read_offset_reg;
  rand WRITE_OFFSET_REG reg_write_offset_reg;
  rand FIFO_FULLNESS_REG reg_fifo_fullness_reg;
  rand CH_ENABLE_REG reg_ch_enable_reg;
  rand CH_START_REG reg_ch_start_reg;
  rand CH_ACTIVE_REG reg_ch_active_reg;
  rand COUNT_REG reg_count_reg;
  rand INT_RAWSTAT_REG reg_int_rawstat_reg;
  rand INT_CLEAR_REG reg_int_clear_reg;
  rand INT_ENABLE_REG reg_int_enable_reg;
  rand INT_STATUS_REG reg_int_status_reg;
  rand INT0_STATUS reg_int0_status;
  rand INT1_STATUS reg_int1_status;
  rand INT2_STATUS reg_int2_status;
  rand INT3_STATUS reg_int3_status;
  rand INT4_STATUS reg_int4_status;
  rand INT5_STATUS reg_int5_status;
  rand INT6_STATUS reg_int6_status;
  rand INT7_STATUS reg_int7_status;
  rand CORE0_JOINT_MODE reg_core0_joint_mode;
  rand CORE1_JOINT_MODE reg_core1_joint_mode;
  rand CORE0_PRIORITY reg_core0_priority;
  rand CORE1_PRIORITY reg_core1_priority;
  rand CORE1_CLKDIV reg_core1_clkdiv;
  rand CORE0_CH_START reg_core0_ch_start;
  rand CORE1_CH_START reg_core1_ch_start;
  rand PERIPH_RX_CTRL reg_periph_rx_ctrl;
  rand PERIPH_TX_CTRL reg_periph_tx_ctrl;
  rand IDLE reg_idle;
  rand USER_DEF_STATUS reg_user_def_status;
  rand USER_CORE0_DEF_STATUS0 reg_user_core0_def_status0;
  rand USER_CORE0_DEF_STATUS1 reg_user_core0_def_status1;
  rand USER_CORE1_DEF_STATUS0 reg_user_core1_def_status0;
  rand USER_CORE1_DEF_STATUS1 reg_user_core1_def_status1;

  //---------------------------------------
  // Constructor
  //---------------------------------------
  function new (string name = "");
    super.new(name, build_coverage(UVM_NO_COVERAGE));
  endfunction

  //---------------------------------------
  // Build Phase
  //---------------------------------------
  function void build();
    reg_cmd_reg0 = CMD_REG0::type_id::create("reg_cmd_reg0");
    reg_cmd_reg0.build();
    reg_cmd_reg0.configure(this);
    reg_cmd_reg1 = CMD_REG1::type_id::create("reg_cmd_reg1");
    reg_cmd_reg1.build();
    reg_cmd_reg1.configure(this);
    reg_cmd_reg2 = CMD_REG2::type_id::create("reg_cmd_reg2");
    reg_cmd_reg2.build();
    reg_cmd_reg2.configure(this);
    reg_ = ::type_id::create("reg_");
    reg_.build();
    reg_.configure(this);
    reg_cmd_reg3 = CMD_REG3::type_id::create("reg_cmd_reg3");
    reg_cmd_reg3.build();
    reg_cmd_reg3.configure(this);
    reg_static_reg0 = STATIC_REG0::type_id::create("reg_static_reg0");
    reg_static_reg0.build();
    reg_static_reg0.configure(this);
    reg_static_reg1 = STATIC_REG1::type_id::create("reg_static_reg1");
    reg_static_reg1.build();
    reg_static_reg1.configure(this);
    reg_static_reg2 = STATIC_REG2::type_id::create("reg_static_reg2");
    reg_static_reg2.build();
    reg_static_reg2.configure(this);
    reg_static_reg3 = STATIC_REG3::type_id::create("reg_static_reg3");
    reg_static_reg3.build();
    reg_static_reg3.configure(this);
    reg_static_reg4 = STATIC_REG4::type_id::create("reg_static_reg4");
    reg_static_reg4.build();
    reg_static_reg4.configure(this);
    reg_restrict_reg = RESTRICT_REG::type_id::create("reg_restrict_reg");
    reg_restrict_reg.build();
    reg_restrict_reg.configure(this);
    reg_read_offset_reg = READ_OFFSET_REG::type_id::create("reg_read_offset_reg");
    reg_read_offset_reg.build();
    reg_read_offset_reg.configure(this);
    reg_write_offset_reg = WRITE_OFFSET_REG::type_id::create("reg_write_offset_reg");
    reg_write_offset_reg.build();
    reg_write_offset_reg.configure(this);
    reg_fifo_fullness_reg = FIFO_FULLNESS_REG::type_id::create("reg_fifo_fullness_reg");
    reg_fifo_fullness_reg.build();
    reg_fifo_fullness_reg.configure(this);
    reg_ch_enable_reg = CH_ENABLE_REG::type_id::create("reg_ch_enable_reg");
    reg_ch_enable_reg.build();
    reg_ch_enable_reg.configure(this);
    reg_ch_start_reg = CH_START_REG::type_id::create("reg_ch_start_reg");
    reg_ch_start_reg.build();
    reg_ch_start_reg.configure(this);
    reg_ch_active_reg = CH_ACTIVE_REG::type_id::create("reg_ch_active_reg");
    reg_ch_active_reg.build();
    reg_ch_active_reg.configure(this);
    reg_count_reg = COUNT_REG::type_id::create("reg_count_reg");
    reg_count_reg.build();
    reg_count_reg.configure(this);
    reg_int_rawstat_reg = INT_RAWSTAT_REG::type_id::create("reg_int_rawstat_reg");
    reg_int_rawstat_reg.build();
    reg_int_rawstat_reg.configure(this);
    reg_int_clear_reg = INT_CLEAR_REG::type_id::create("reg_int_clear_reg");
    reg_int_clear_reg.build();
    reg_int_clear_reg.configure(this);
    reg_int_enable_reg = INT_ENABLE_REG::type_id::create("reg_int_enable_reg");
    reg_int_enable_reg.build();
    reg_int_enable_reg.configure(this);
    reg_int_status_reg = INT_STATUS_REG::type_id::create("reg_int_status_reg");
    reg_int_status_reg.build();
    reg_int_status_reg.configure(this);
    reg_int0_status = INT0_STATUS::type_id::create("reg_int0_status");
    reg_int0_status.build();
    reg_int0_status.configure(this);
    reg_int1_status = INT1_STATUS::type_id::create("reg_int1_status");
    reg_int1_status.build();
    reg_int1_status.configure(this);
    reg_int2_status = INT2_STATUS::type_id::create("reg_int2_status");
    reg_int2_status.build();
    reg_int2_status.configure(this);
    reg_int3_status = INT3_STATUS::type_id::create("reg_int3_status");
    reg_int3_status.build();
    reg_int3_status.configure(this);
    reg_int4_status = INT4_STATUS::type_id::create("reg_int4_status");
    reg_int4_status.build();
    reg_int4_status.configure(this);
    reg_int5_status = INT5_STATUS::type_id::create("reg_int5_status");
    reg_int5_status.build();
    reg_int5_status.configure(this);
    reg_int6_status = INT6_STATUS::type_id::create("reg_int6_status");
    reg_int6_status.build();
    reg_int6_status.configure(this);
    reg_int7_status = INT7_STATUS::type_id::create("reg_int7_status");
    reg_int7_status.build();
    reg_int7_status.configure(this);
    reg_core0_joint_mode = CORE0_JOINT_MODE::type_id::create("reg_core0_joint_mode");
    reg_core0_joint_mode.build();
    reg_core0_joint_mode.configure(this);
    reg_core1_joint_mode = CORE1_JOINT_MODE::type_id::create("reg_core1_joint_mode");
    reg_core1_joint_mode.build();
    reg_core1_joint_mode.configure(this);
    reg_core0_priority = CORE0_PRIORITY::type_id::create("reg_core0_priority");
    reg_core0_priority.build();
    reg_core0_priority.configure(this);
    reg_core1_priority = CORE1_PRIORITY::type_id::create("reg_core1_priority");
    reg_core1_priority.build();
    reg_core1_priority.configure(this);
    reg_core1_clkdiv = CORE1_CLKDIV::type_id::create("reg_core1_clkdiv");
    reg_core1_clkdiv.build();
    reg_core1_clkdiv.configure(this);
    reg_core0_ch_start = CORE0_CH_START::type_id::create("reg_core0_ch_start");
    reg_core0_ch_start.build();
    reg_core0_ch_start.configure(this);
    reg_core1_ch_start = CORE1_CH_START::type_id::create("reg_core1_ch_start");
    reg_core1_ch_start.build();
    reg_core1_ch_start.configure(this);
    reg_periph_rx_ctrl = PERIPH_RX_CTRL::type_id::create("reg_periph_rx_ctrl");
    reg_periph_rx_ctrl.build();
    reg_periph_rx_ctrl.configure(this);
    reg_periph_tx_ctrl = PERIPH_TX_CTRL::type_id::create("reg_periph_tx_ctrl");
    reg_periph_tx_ctrl.build();
    reg_periph_tx_ctrl.configure(this);
    reg_idle = IDLE::type_id::create("reg_idle");
    reg_idle.build();
    reg_idle.configure(this);
    reg_user_def_status = USER_DEF_STATUS::type_id::create("reg_user_def_status");
    reg_user_def_status.build();
    reg_user_def_status.configure(this);
    reg_user_core0_def_status0 = USER_CORE0_DEF_STATUS0::type_id::create("reg_user_core0_def_status0");
    reg_user_core0_def_status0.build();
    reg_user_core0_def_status0.configure(this);
    reg_user_core0_def_status1 = USER_CORE0_DEF_STATUS1::type_id::create("reg_user_core0_def_status1");
    reg_user_core0_def_status1.build();
    reg_user_core0_def_status1.configure(this);
    reg_user_core1_def_status0 = USER_CORE1_DEF_STATUS0::type_id::create("reg_user_core1_def_status0");
    reg_user_core1_def_status0.build();
    reg_user_core1_def_status0.configure(this);
    reg_user_core1_def_status1 = USER_CORE1_DEF_STATUS1::type_id::create("reg_user_core1_def_status1");
    reg_user_core1_def_status1.build();
    reg_user_core1_def_status1.configure(this);
    //---------------------------------------
    // Memory Map Creation and Register Map
    //---------------------------------------
    default_map = create_map("my_map", 0, 4, UVM_LITTLE_ENDIAN);
    default_map.add_reg(reg_cmd_reg0, 'h0, "RW");
    default_map.add_reg(reg_cmd_reg1, 'h0, "RW");
    default_map.add_reg(reg_cmd_reg2, 'h0, "RW");
    default_map.add_reg(reg_, 'h0, "RW");
    default_map.add_reg(reg_cmd_reg3, 'h0, "RW");
    default_map.add_reg(reg_static_reg0, 'h0, "RW");
    default_map.add_reg(reg_static_reg1, 'h0, "RW");
    default_map.add_reg(reg_static_reg2, 'h0, "RW");
    default_map.add_reg(reg_static_reg3, 'h0, "RW");
    default_map.add_reg(reg_static_reg4, 'h0, "RW");
    default_map.add_reg(reg_restrict_reg, 'h0, "RW");
    default_map.add_reg(reg_read_offset_reg, 'h0, "RW");
    default_map.add_reg(reg_write_offset_reg, 'h0, "RW");
    default_map.add_reg(reg_fifo_fullness_reg, 'h0, "RW");
    default_map.add_reg(reg_ch_enable_reg, 'h0, "RW");
    default_map.add_reg(reg_ch_start_reg, 'h0, "RW");
    default_map.add_reg(reg_ch_active_reg, 'h0, "RW");
    default_map.add_reg(reg_count_reg, 'h0, "RW");
    default_map.add_reg(reg_int_rawstat_reg, 'h0, "RW");
    default_map.add_reg(reg_int_clear_reg, 'h0, "RW");
    default_map.add_reg(reg_int_enable_reg, 'h0, "RW");
    default_map.add_reg(reg_int_status_reg, 'h0, "RW");
    default_map.add_reg(reg_int0_status, 'h0, "RW");
    default_map.add_reg(reg_int1_status, 'h0, "RW");
    default_map.add_reg(reg_int2_status, 'h0, "RW");
    default_map.add_reg(reg_int3_status, 'h0, "RW");
    default_map.add_reg(reg_int4_status, 'h0, "RW");
    default_map.add_reg(reg_int5_status, 'h0, "RW");
    default_map.add_reg(reg_int6_status, 'h0, "RW");
    default_map.add_reg(reg_int7_status, 'h0, "RW");
    default_map.add_reg(reg_core0_joint_mode, 'h0, "RW");
    default_map.add_reg(reg_core1_joint_mode, 'h0, "RW");
    default_map.add_reg(reg_core0_priority, 'h0, "RW");
    default_map.add_reg(reg_core1_priority, 'h0, "RW");
    default_map.add_reg(reg_core1_clkdiv, 'h0, "RW");
    default_map.add_reg(reg_core0_ch_start, 'h0, "RW");
    default_map.add_reg(reg_core1_ch_start, 'h0, "RW");
    default_map.add_reg(reg_periph_rx_ctrl, 'h0, "RW");
    default_map.add_reg(reg_periph_tx_ctrl, 'h0, "RW");
    default_map.add_reg(reg_idle, 'h0, "RW");
    default_map.add_reg(reg_user_def_status, 'h0, "RW");
    default_map.add_reg(reg_user_core0_def_status0, 'h0, "RW");
    default_map.add_reg(reg_user_core0_def_status1, 'h0, "RW");
    default_map.add_reg(reg_user_core1_def_status0, 'h0, "RW");
    default_map.add_reg(reg_user_core1_def_status1, 'h0, "RW");
    lock_model();
  endfunction
endclass

`endif // REG_MODEL
