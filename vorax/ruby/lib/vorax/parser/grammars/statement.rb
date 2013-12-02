
# line 1 "lib/vorax/parser/grammars/statement.rl"

# line 59 "lib/vorax/parser/grammars/statement.rl"


module Vorax

  module Parser

    # Gets the type of the provided statement.
    # 
    # @param data [String] the statement
    # @return [String] 'SQLPLUS' for an sqlplus statement, 'FUNCTION|PROCEDURE|PACKAGE|TYPE...' for
    #   a PL/SQL block, 'ANONYMOUS' for an anonymous plsql block
    def self.statement_type(data)
      stmt_type = nil
      data << "\n"
      
# line 21 "lib/vorax/parser/grammars/statement.rb"
class << self
	attr_accessor :_statement_actions
	private :_statement_actions, :_statement_actions=
end
self._statement_actions = [
	0, 1, 0, 1, 1, 1, 2, 1, 
	3, 1, 4, 1, 5, 1, 6, 2, 
	0, 3
]

class << self
	attr_accessor :_statement_key_offsets
	private :_statement_key_offsets, :_statement_key_offsets=
end
self._statement_key_offsets = [
	0, 0, 37, 38, 39, 40, 42, 48, 
	50, 57, 58, 59, 60, 61, 63, 70, 
	77, 82, 84, 86, 88, 90, 92, 94, 
	96, 98, 100, 102, 104, 110, 112, 114, 
	116, 121, 122, 123, 124, 125, 127, 129, 
	136, 143, 145, 152, 159, 166, 172, 179, 
	186, 193, 201, 208, 215, 222, 224, 231, 
	238, 240, 247, 254, 256, 258, 260, 262, 
	264, 269, 288, 289, 290, 291, 292, 294, 
	296, 298, 303, 312, 313, 314, 315, 316, 
	318, 320, 322, 324, 326, 328, 330, 335, 
	344, 345, 346, 347, 348, 350, 352, 354, 
	356, 361, 362, 363, 364, 365, 367, 369, 
	371, 373, 375, 377, 379, 384, 391, 392, 
	393, 394, 395, 397, 399, 401, 403, 405, 
	407, 409, 411, 413, 415, 417, 419, 421, 
	423, 428, 435, 436, 437, 438, 439, 441, 
	443, 445, 447, 449, 451, 453, 458, 475, 
	476, 477, 478, 479, 481, 485, 487, 489, 
	491, 493, 495, 500, 501, 502, 503, 504, 
	506, 508, 510, 512, 517, 519, 521, 523, 
	525, 527, 529, 531, 535, 537, 539, 541, 
	543, 545, 547, 551, 557, 559, 561, 563, 
	565, 572, 579, 581, 588, 595, 602, 604, 
	606, 613, 620, 627, 629, 633, 635, 637, 
	641, 643, 645, 647, 651, 655, 657, 659, 
	666, 673, 680, 687, 691, 693, 700, 702, 
	704, 708, 714, 716, 718, 720, 722, 729, 
	736, 740, 747, 754, 761, 768, 775, 782, 
	789, 799, 801, 803, 808, 809, 810, 811, 
	812, 814, 816, 818, 820, 822, 824, 826, 
	828, 830, 832, 834, 839, 840, 841, 842, 
	843, 845, 849, 856, 858, 860, 862, 864, 
	866, 868, 875, 882, 886, 893, 900, 907, 
	909, 911, 915, 922, 929, 936, 938, 940, 
	942, 944, 946, 948, 955, 962, 969, 971, 
	973, 975, 977, 979, 981, 983, 985, 985, 
	986, 987, 992, 997, 1002, 1009, 1016
]

class << self
	attr_accessor :_statement_trans_keys
	private :_statement_trans_keys, :_statement_trans_keys=
end
self._statement_trans_keys = [
	32, 33, 45, 47, 64, 65, 66, 67, 
	68, 69, 72, 80, 81, 82, 83, 84, 
	85, 86, 87, 88, 97, 98, 99, 100, 
	101, 104, 112, 113, 114, 115, 116, 117, 
	118, 119, 120, 9, 13, 45, 10, 42, 
	42, 47, 67, 82, 84, 99, 114, 116, 
	67, 99, 32, 45, 47, 69, 101, 9, 
	13, 45, 10, 42, 42, 42, 47, 32, 
	45, 47, 80, 112, 9, 13, 32, 45, 
	47, 84, 116, 9, 13, 32, 45, 47, 
	9, 13, 67, 99, 72, 104, 73, 105, 
	86, 118, 69, 101, 84, 116, 82, 114, 
	73, 105, 66, 98, 85, 117, 84, 116, 
	69, 82, 84, 101, 114, 116, 71, 103, 
	73, 105, 78, 110, 32, 45, 47, 9, 
	13, 45, 10, 42, 42, 42, 47, 69, 
	101, 32, 45, 47, 65, 97, 9, 13, 
	32, 45, 47, 75, 107, 9, 13, 73, 
	105, 32, 45, 47, 84, 116, 9, 13, 
	32, 45, 47, 76, 108, 9, 13, 32, 
	45, 47, 69, 101, 9, 13, 76, 79, 
	82, 108, 111, 114, 32, 45, 47, 69, 
	101, 9, 13, 32, 45, 47, 65, 97, 
	9, 13, 32, 45, 47, 82, 114, 9, 
	13, 76, 77, 78, 80, 108, 109, 110, 
	112, 32, 45, 47, 85, 117, 9, 13, 
	32, 45, 47, 77, 109, 9, 13, 32, 
	45, 47, 78, 110, 9, 13, 80, 112, 
	32, 45, 47, 85, 117, 9, 13, 32, 
	45, 47, 84, 116, 9, 13, 78, 110, 
	32, 45, 47, 69, 101, 9, 13, 32, 
	45, 47, 67, 99, 9, 13, 89, 121, 
	69, 101, 65, 97, 84, 116, 69, 101, 
	32, 45, 47, 9, 13, 32, 45, 47, 
	65, 70, 74, 78, 79, 80, 84, 97, 
	102, 106, 110, 111, 112, 116, 9, 13, 
	45, 10, 42, 42, 42, 47, 78, 110, 
	68, 100, 32, 45, 47, 9, 13, 32, 
	45, 47, 67, 82, 99, 114, 9, 13, 
	45, 10, 42, 42, 42, 47, 79, 111, 
	77, 109, 80, 112, 73, 105, 76, 108, 
	69, 101, 32, 45, 47, 9, 13, 32, 
	45, 47, 74, 78, 106, 110, 9, 13, 
	45, 10, 42, 42, 42, 47, 65, 97, 
	86, 118, 65, 97, 32, 45, 47, 9, 
	13, 45, 10, 42, 42, 42, 47, 79, 
	111, 70, 102, 79, 111, 82, 114, 67, 
	99, 69, 101, 32, 45, 47, 9, 13, 
	32, 45, 47, 74, 106, 9, 13, 45, 
	10, 42, 42, 42, 47, 69, 101, 83, 
	115, 79, 111, 76, 108, 86, 118, 85, 
	117, 78, 110, 67, 99, 84, 116, 73, 
	105, 79, 111, 78, 110, 82, 114, 32, 
	45, 47, 9, 13, 32, 45, 47, 82, 
	114, 9, 13, 45, 10, 42, 42, 42, 
	47, 69, 101, 80, 112, 76, 108, 65, 
	97, 67, 99, 69, 101, 32, 45, 47, 
	9, 13, 32, 45, 47, 65, 70, 74, 
	78, 80, 84, 97, 102, 106, 110, 112, 
	116, 9, 13, 45, 10, 42, 42, 42, 
	47, 65, 82, 97, 114, 67, 99, 75, 
	107, 65, 97, 71, 103, 69, 101, 32, 
	45, 47, 9, 13, 45, 10, 42, 42, 
	42, 47, 79, 111, 68, 100, 89, 121, 
	32, 45, 47, 9, 13, 79, 111, 67, 
	99, 69, 101, 68, 100, 85, 117, 82, 
	114, 69, 101, 82, 89, 114, 121, 73, 
	105, 71, 103, 71, 103, 69, 101, 82, 
	114, 80, 112, 69, 73, 101, 105, 67, 
	70, 83, 99, 102, 115, 76, 108, 65, 
	97, 82, 114, 69, 101, 32, 45, 47, 
	73, 105, 9, 13, 32, 45, 47, 78, 
	110, 9, 13, 67, 99, 32, 45, 47, 
	82, 114, 9, 13, 32, 45, 47, 73, 
	105, 9, 13, 32, 45, 47, 66, 98, 
	9, 13, 83, 115, 67, 99, 32, 45, 
	47, 79, 111, 9, 13, 32, 45, 47, 
	78, 110, 9, 13, 32, 45, 47, 78, 
	110, 9, 13, 88, 120, 69, 73, 101, 
	105, 67, 99, 84, 116, 69, 79, 101, 
	111, 76, 108, 80, 112, 83, 115, 65, 
	82, 97, 114, 83, 85, 115, 117, 83, 
	115, 87, 119, 32, 45, 47, 79, 111, 
	9, 13, 32, 45, 47, 82, 114, 9, 
	13, 32, 45, 47, 68, 100, 9, 13, 
	32, 45, 47, 83, 115, 9, 13, 73, 
	79, 105, 111, 78, 110, 32, 45, 47, 
	77, 109, 9, 13, 85, 117, 73, 105, 
	69, 85, 101, 117, 67, 77, 80, 99, 
	109, 112, 79, 111, 86, 118, 69, 101, 
	82, 114, 32, 45, 47, 65, 97, 9, 
	13, 32, 45, 47, 82, 114, 9, 13, 
	70, 72, 102, 104, 32, 45, 47, 79, 
	111, 9, 13, 32, 45, 47, 79, 111, 
	9, 13, 32, 45, 47, 84, 116, 9, 
	13, 32, 45, 47, 69, 101, 9, 13, 
	32, 45, 47, 69, 101, 9, 13, 32, 
	45, 47, 65, 97, 9, 13, 32, 45, 
	47, 68, 100, 9, 13, 65, 69, 72, 
	80, 84, 97, 101, 104, 112, 116, 86, 
	118, 84, 116, 32, 45, 47, 9, 13, 
	45, 10, 42, 42, 42, 47, 82, 114, 
	65, 97, 78, 110, 83, 115, 65, 97, 
	67, 99, 84, 116, 73, 105, 79, 111, 
	78, 110, 32, 45, 47, 9, 13, 45, 
	10, 42, 42, 42, 47, 79, 85, 111, 
	117, 32, 45, 47, 87, 119, 9, 13, 
	84, 116, 68, 100, 79, 111, 87, 119, 
	78, 110, 79, 111, 32, 45, 47, 79, 
	111, 9, 13, 32, 45, 47, 76, 108, 
	9, 13, 65, 79, 97, 111, 32, 45, 
	47, 82, 114, 9, 13, 32, 45, 47, 
	84, 116, 9, 13, 32, 45, 47, 85, 
	117, 9, 13, 82, 114, 73, 105, 77, 
	84, 109, 116, 32, 45, 47, 73, 105, 
	9, 13, 32, 45, 47, 78, 110, 9, 
	13, 32, 45, 47, 71, 103, 9, 13, 
	78, 110, 68, 100, 69, 101, 70, 102, 
	65, 97, 82, 114, 32, 45, 47, 73, 
	105, 9, 13, 32, 45, 47, 65, 97, 
	9, 13, 32, 45, 47, 66, 98, 9, 
	13, 72, 104, 69, 101, 78, 110, 69, 
	101, 81, 113, 85, 117, 69, 101, 82, 
	114, 42, 64, 32, 45, 47, 9, 13, 
	32, 45, 47, 9, 13, 32, 45, 47, 
	9, 13, 32, 45, 47, 66, 98, 9, 
	13, 32, 45, 47, 84, 116, 9, 13, 
	32, 45, 47, 9, 13, 0
]

class << self
	attr_accessor :_statement_single_lengths
	private :_statement_single_lengths, :_statement_single_lengths=
end
self._statement_single_lengths = [
	0, 35, 1, 1, 1, 2, 6, 2, 
	5, 1, 1, 1, 1, 2, 5, 5, 
	3, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 6, 2, 2, 2, 
	3, 1, 1, 1, 1, 2, 2, 5, 
	5, 2, 5, 5, 5, 6, 5, 5, 
	5, 8, 5, 5, 5, 2, 5, 5, 
	2, 5, 5, 2, 2, 2, 2, 2, 
	3, 17, 1, 1, 1, 1, 2, 2, 
	2, 3, 7, 1, 1, 1, 1, 2, 
	2, 2, 2, 2, 2, 2, 3, 7, 
	1, 1, 1, 1, 2, 2, 2, 2, 
	3, 1, 1, 1, 1, 2, 2, 2, 
	2, 2, 2, 2, 3, 5, 1, 1, 
	1, 1, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	3, 5, 1, 1, 1, 1, 2, 2, 
	2, 2, 2, 2, 2, 3, 15, 1, 
	1, 1, 1, 2, 4, 2, 2, 2, 
	2, 2, 3, 1, 1, 1, 1, 2, 
	2, 2, 2, 3, 2, 2, 2, 2, 
	2, 2, 2, 4, 2, 2, 2, 2, 
	2, 2, 4, 6, 2, 2, 2, 2, 
	5, 5, 2, 5, 5, 5, 2, 2, 
	5, 5, 5, 2, 4, 2, 2, 4, 
	2, 2, 2, 4, 4, 2, 2, 5, 
	5, 5, 5, 4, 2, 5, 2, 2, 
	4, 6, 2, 2, 2, 2, 5, 5, 
	4, 5, 5, 5, 5, 5, 5, 5, 
	10, 2, 2, 3, 1, 1, 1, 1, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 3, 1, 1, 1, 1, 
	2, 4, 5, 2, 2, 2, 2, 2, 
	2, 5, 5, 4, 5, 5, 5, 2, 
	2, 4, 5, 5, 5, 2, 2, 2, 
	2, 2, 2, 5, 5, 5, 2, 2, 
	2, 2, 2, 2, 2, 2, 0, 1, 
	1, 3, 3, 3, 5, 5, 3
]

class << self
	attr_accessor :_statement_range_lengths
	private :_statement_range_lengths, :_statement_range_lengths=
end
self._statement_range_lengths = [
	0, 1, 0, 0, 0, 0, 0, 0, 
	1, 0, 0, 0, 0, 0, 1, 1, 
	1, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	1, 0, 0, 0, 0, 0, 0, 1, 
	1, 0, 1, 1, 1, 0, 1, 1, 
	1, 0, 1, 1, 1, 0, 1, 1, 
	0, 1, 1, 0, 0, 0, 0, 0, 
	1, 1, 0, 0, 0, 0, 0, 0, 
	0, 1, 1, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 1, 1, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	1, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 1, 1, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	1, 1, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 1, 1, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 1, 0, 0, 0, 0, 0, 
	0, 0, 0, 1, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	1, 1, 0, 1, 1, 1, 0, 0, 
	1, 1, 1, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 1, 
	1, 1, 1, 0, 0, 1, 0, 0, 
	0, 0, 0, 0, 0, 0, 1, 1, 
	0, 1, 1, 1, 1, 1, 1, 1, 
	0, 0, 0, 1, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 1, 0, 0, 0, 0, 
	0, 0, 1, 0, 0, 0, 0, 0, 
	0, 1, 1, 0, 1, 1, 1, 0, 
	0, 0, 1, 1, 1, 0, 0, 0, 
	0, 0, 0, 1, 1, 1, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 1, 1, 1, 1, 1, 1
]

class << self
	attr_accessor :_statement_index_offsets
	private :_statement_index_offsets, :_statement_index_offsets=
end
self._statement_index_offsets = [
	0, 0, 37, 39, 41, 43, 46, 53, 
	56, 63, 65, 67, 69, 71, 74, 81, 
	88, 93, 96, 99, 102, 105, 108, 111, 
	114, 117, 120, 123, 126, 133, 136, 139, 
	142, 147, 149, 151, 153, 155, 158, 161, 
	168, 175, 178, 185, 192, 199, 206, 213, 
	220, 227, 236, 243, 250, 257, 260, 267, 
	274, 277, 284, 291, 294, 297, 300, 303, 
	306, 311, 330, 332, 334, 336, 338, 341, 
	344, 347, 352, 361, 363, 365, 367, 369, 
	372, 375, 378, 381, 384, 387, 390, 395, 
	404, 406, 408, 410, 412, 415, 418, 421, 
	424, 429, 431, 433, 435, 437, 440, 443, 
	446, 449, 452, 455, 458, 463, 470, 472, 
	474, 476, 478, 481, 484, 487, 490, 493, 
	496, 499, 502, 505, 508, 511, 514, 517, 
	520, 525, 532, 534, 536, 538, 540, 543, 
	546, 549, 552, 555, 558, 561, 566, 583, 
	585, 587, 589, 591, 594, 599, 602, 605, 
	608, 611, 614, 619, 621, 623, 625, 627, 
	630, 633, 636, 639, 644, 647, 650, 653, 
	656, 659, 662, 665, 670, 673, 676, 679, 
	682, 685, 688, 693, 700, 703, 706, 709, 
	712, 719, 726, 729, 736, 743, 750, 753, 
	756, 763, 770, 777, 780, 785, 788, 791, 
	796, 799, 802, 805, 810, 815, 818, 821, 
	828, 835, 842, 849, 854, 857, 864, 867, 
	870, 875, 882, 885, 888, 891, 894, 901, 
	908, 913, 920, 927, 934, 941, 948, 955, 
	962, 973, 976, 979, 984, 986, 988, 990, 
	992, 995, 998, 1001, 1004, 1007, 1010, 1013, 
	1016, 1019, 1022, 1025, 1030, 1032, 1034, 1036, 
	1038, 1041, 1046, 1053, 1056, 1059, 1062, 1065, 
	1068, 1071, 1078, 1085, 1090, 1097, 1104, 1111, 
	1114, 1117, 1122, 1129, 1136, 1143, 1146, 1149, 
	1152, 1155, 1158, 1161, 1168, 1175, 1182, 1185, 
	1188, 1191, 1194, 1197, 1200, 1203, 1206, 1207, 
	1209, 1211, 1216, 1221, 1226, 1233, 1240
]

class << self
	attr_accessor :_statement_trans_targs
	private :_statement_trans_targs, :_statement_trans_targs=
end
self._statement_trans_targs = [
	1, 294, 2, 295, 296, 6, 28, 45, 
	178, 195, 199, 203, 214, 216, 232, 272, 
	277, 281, 286, 290, 6, 28, 45, 178, 
	195, 199, 203, 214, 216, 232, 272, 277, 
	281, 286, 290, 1, 0, 3, 0, 1, 
	3, 5, 4, 5, 1, 4, 7, 17, 
	22, 7, 17, 22, 0, 8, 8, 0, 
	297, 9, 11, 14, 14, 297, 0, 10, 
	0, 297, 10, 12, 0, 13, 12, 13, 
	297, 12, 297, 9, 11, 15, 15, 297, 
	0, 297, 9, 11, 16, 16, 297, 0, 
	297, 9, 11, 297, 0, 18, 18, 0, 
	19, 19, 0, 20, 20, 0, 21, 21, 
	0, 16, 16, 0, 23, 23, 0, 24, 
	24, 0, 25, 25, 0, 26, 26, 0, 
	27, 27, 0, 21, 21, 0, 29, 38, 
	41, 29, 38, 41, 0, 30, 30, 0, 
	31, 31, 0, 32, 32, 0, 298, 33, 
	35, 298, 0, 34, 0, 298, 34, 36, 
	0, 37, 36, 37, 298, 36, 39, 39, 
	0, 297, 9, 11, 40, 40, 297, 0, 
	297, 9, 11, 16, 16, 297, 0, 42, 
	42, 0, 297, 9, 11, 43, 43, 297, 
	0, 297, 9, 11, 44, 44, 297, 0, 
	297, 9, 11, 16, 16, 297, 0, 46, 
	49, 60, 46, 49, 60, 0, 297, 9, 
	11, 47, 47, 297, 0, 297, 9, 11, 
	48, 48, 297, 0, 297, 9, 11, 16, 
	16, 297, 0, 50, 53, 56, 59, 50, 
	53, 56, 59, 0, 297, 9, 11, 51, 
	51, 297, 0, 297, 9, 11, 52, 52, 
	297, 0, 297, 9, 11, 16, 16, 297, 
	0, 54, 54, 0, 297, 9, 11, 55, 
	55, 297, 0, 297, 9, 11, 44, 44, 
	297, 0, 57, 57, 0, 297, 9, 11, 
	58, 58, 297, 0, 297, 9, 11, 15, 
	15, 297, 0, 16, 16, 0, 61, 61, 
	0, 62, 62, 0, 63, 63, 0, 64, 
	64, 0, 65, 66, 68, 65, 0, 65, 
	66, 68, 71, 120, 93, 102, 127, 148, 
	171, 71, 120, 93, 102, 127, 148, 171, 
	65, 0, 67, 0, 65, 67, 69, 0, 
	70, 69, 70, 65, 69, 72, 72, 0, 
	73, 73, 0, 74, 75, 77, 74, 0, 
	74, 75, 77, 80, 115, 80, 115, 74, 
	0, 76, 0, 74, 76, 78, 0, 79, 
	78, 79, 74, 78, 81, 81, 0, 82, 
	82, 0, 83, 83, 0, 84, 84, 0, 
	85, 85, 0, 86, 86, 0, 87, 88, 
	90, 87, 0, 87, 88, 90, 93, 102, 
	93, 102, 87, 0, 89, 0, 87, 89, 
	91, 0, 92, 91, 92, 87, 91, 94, 
	94, 0, 95, 95, 0, 96, 96, 0, 
	299, 97, 99, 299, 0, 98, 0, 299, 
	98, 100, 0, 101, 100, 101, 299, 100, 
	103, 103, 0, 104, 104, 0, 105, 105, 
	0, 106, 106, 0, 107, 107, 0, 108, 
	108, 0, 109, 110, 112, 109, 0, 109, 
	110, 112, 93, 93, 109, 0, 111, 0, 
	109, 111, 113, 0, 114, 113, 114, 109, 
	113, 116, 116, 0, 117, 117, 0, 118, 
	118, 0, 119, 119, 0, 85, 85, 0, 
	121, 121, 0, 122, 122, 0, 123, 123, 
	0, 124, 124, 0, 125, 125, 0, 126, 
	126, 0, 96, 96, 0, 128, 128, 0, 
	129, 130, 132, 129, 0, 129, 130, 132, 
	135, 135, 129, 0, 131, 0, 129, 131, 
	133, 0, 134, 133, 134, 129, 133, 136, 
	136, 0, 137, 137, 0, 138, 138, 0, 
	139, 139, 0, 140, 140, 0, 141, 141, 
	0, 142, 143, 145, 142, 0, 142, 143, 
	145, 71, 120, 93, 102, 148, 171, 71, 
	120, 93, 102, 148, 171, 142, 0, 144, 
	0, 142, 144, 146, 0, 147, 146, 147, 
	142, 146, 149, 164, 149, 164, 0, 150, 
	150, 0, 151, 151, 0, 152, 152, 0, 
	153, 153, 0, 154, 154, 0, 300, 155, 
	157, 300, 0, 156, 0, 300, 156, 158, 
	0, 159, 158, 159, 300, 158, 161, 161, 
	0, 162, 162, 0, 163, 163, 0, 299, 
	97, 99, 299, 0, 165, 165, 0, 166, 
	166, 0, 167, 167, 0, 168, 168, 0, 
	169, 169, 0, 170, 170, 0, 96, 96, 
	0, 172, 177, 172, 177, 0, 173, 173, 
	0, 174, 174, 0, 175, 175, 0, 176, 
	176, 0, 96, 96, 0, 153, 153, 0, 
	179, 190, 179, 190, 0, 180, 184, 186, 
	180, 184, 186, 0, 181, 181, 0, 182, 
	182, 0, 183, 183, 0, 32, 32, 0, 
	297, 9, 11, 185, 185, 297, 0, 297, 
	9, 11, 44, 44, 297, 0, 187, 187, 
	0, 297, 9, 11, 188, 188, 297, 0, 
	297, 9, 11, 189, 189, 297, 0, 297, 
	9, 11, 44, 44, 297, 0, 191, 191, 
	0, 192, 192, 0, 297, 9, 11, 193, 
	193, 297, 0, 297, 9, 11, 194, 194, 
	297, 0, 297, 9, 11, 57, 57, 297, 
	0, 196, 196, 0, 197, 198, 197, 198, 
	0, 54, 54, 0, 16, 16, 0, 200, 
	202, 200, 202, 0, 201, 201, 0, 16, 
	16, 0, 198, 198, 0, 204, 211, 204, 
	211, 0, 205, 210, 205, 210, 0, 206, 
	206, 0, 207, 207, 0, 297, 9, 11, 
	208, 208, 297, 0, 297, 9, 11, 209, 
	209, 297, 0, 297, 9, 11, 16, 16, 
	297, 0, 297, 9, 11, 44, 44, 297, 
	0, 212, 213, 212, 213, 0, 198, 198, 
	0, 297, 9, 11, 14, 14, 297, 0, 
	215, 215, 0, 198, 198, 0, 217, 52, 
	217, 52, 0, 218, 222, 224, 218, 222, 
	224, 0, 219, 219, 0, 220, 220, 0, 
	221, 221, 0, 16, 16, 0, 297, 9, 
	11, 223, 223, 297, 0, 297, 9, 11, 
	40, 40, 297, 0, 225, 229, 225, 229, 
	0, 297, 9, 11, 226, 226, 297, 0, 
	297, 9, 11, 227, 227, 297, 0, 297, 
	9, 11, 228, 228, 297, 0, 297, 9, 
	11, 48, 48, 297, 0, 297, 9, 11, 
	230, 230, 297, 0, 297, 9, 11, 231, 
	231, 297, 0, 297, 9, 11, 228, 228, 
	297, 0, 233, 234, 257, 264, 267, 233, 
	234, 257, 264, 267, 0, 44, 44, 0, 
	235, 235, 0, 301, 236, 238, 301, 0, 
	237, 0, 301, 237, 239, 0, 240, 239, 
	240, 301, 239, 242, 242, 0, 243, 243, 
	0, 244, 244, 0, 245, 245, 0, 246, 
	246, 0, 247, 247, 0, 248, 248, 0, 
	249, 249, 0, 250, 250, 0, 251, 251, 
	0, 302, 252, 254, 302, 0, 253, 0, 
	302, 253, 255, 0, 256, 255, 256, 302, 
	255, 258, 259, 258, 259, 0, 297, 9, 
	11, 16, 16, 297, 0, 260, 260, 0, 
	261, 261, 0, 262, 262, 0, 263, 263, 
	0, 16, 16, 0, 265, 265, 0, 297, 
	9, 11, 266, 266, 297, 0, 297, 9, 
	11, 16, 16, 297, 0, 268, 271, 268, 
	271, 0, 297, 9, 11, 269, 269, 297, 
	0, 297, 9, 11, 270, 270, 297, 0, 
	297, 9, 11, 201, 201, 297, 0, 21, 
	21, 0, 273, 273, 0, 274, 43, 274, 
	43, 0, 297, 9, 11, 275, 275, 297, 
	0, 297, 9, 11, 276, 276, 297, 0, 
	297, 9, 11, 16, 16, 297, 0, 278, 
	278, 0, 279, 279, 0, 280, 280, 0, 
	184, 184, 0, 282, 282, 0, 283, 283, 
	0, 297, 9, 11, 284, 284, 297, 0, 
	297, 9, 11, 285, 285, 297, 0, 297, 
	9, 11, 43, 43, 297, 0, 287, 287, 
	0, 288, 288, 0, 289, 289, 0, 219, 
	219, 0, 291, 291, 0, 292, 292, 0, 
	293, 293, 0, 59, 59, 0, 0, 4, 
	0, 294, 0, 297, 9, 11, 297, 0, 
	298, 33, 35, 298, 0, 299, 97, 99, 
	299, 0, 300, 155, 157, 160, 160, 300, 
	0, 301, 236, 238, 241, 241, 301, 0, 
	302, 252, 254, 302, 0, 0
]

class << self
	attr_accessor :_statement_trans_actions
	private :_statement_trans_actions, :_statement_trans_actions=
end
self._statement_trans_actions = [
	0, 15, 0, 15, 15, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 0, 3, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 3, 0, 0, 3, 
	7, 0, 0, 0, 0, 7, 3, 0, 
	3, 7, 0, 0, 3, 0, 0, 0, 
	7, 0, 7, 0, 0, 0, 0, 7, 
	3, 7, 0, 0, 0, 0, 7, 3, 
	7, 0, 0, 7, 3, 0, 0, 3, 
	0, 0, 3, 0, 0, 3, 0, 0, 
	3, 0, 0, 3, 0, 0, 3, 0, 
	0, 3, 0, 0, 3, 0, 0, 3, 
	0, 0, 3, 0, 0, 3, 0, 0, 
	0, 0, 0, 0, 3, 0, 0, 3, 
	0, 0, 3, 0, 0, 3, 5, 0, 
	0, 5, 3, 0, 3, 5, 0, 0, 
	3, 0, 0, 0, 5, 0, 0, 0, 
	3, 7, 0, 0, 0, 0, 7, 3, 
	7, 0, 0, 0, 0, 7, 3, 0, 
	0, 3, 7, 0, 0, 0, 0, 7, 
	3, 7, 0, 0, 0, 0, 7, 3, 
	7, 0, 0, 0, 0, 7, 3, 0, 
	0, 0, 0, 0, 0, 3, 7, 0, 
	0, 0, 0, 7, 3, 7, 0, 0, 
	0, 0, 7, 3, 7, 0, 0, 0, 
	0, 7, 3, 0, 0, 0, 0, 0, 
	0, 0, 0, 3, 7, 0, 0, 0, 
	0, 7, 3, 7, 0, 0, 0, 0, 
	7, 3, 7, 0, 0, 0, 0, 7, 
	3, 0, 0, 3, 7, 0, 0, 0, 
	0, 7, 3, 7, 0, 0, 0, 0, 
	7, 3, 0, 0, 3, 7, 0, 0, 
	0, 0, 7, 3, 7, 0, 0, 0, 
	0, 7, 3, 0, 0, 3, 0, 0, 
	3, 0, 0, 3, 0, 0, 3, 0, 
	0, 3, 0, 0, 0, 0, 3, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 3, 0, 3, 0, 0, 0, 3, 
	0, 0, 0, 0, 0, 0, 0, 3, 
	0, 0, 3, 0, 0, 0, 0, 3, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	3, 0, 3, 0, 0, 0, 3, 0, 
	0, 0, 0, 0, 0, 0, 3, 0, 
	0, 3, 0, 0, 3, 0, 0, 3, 
	0, 0, 3, 0, 0, 3, 0, 0, 
	0, 0, 3, 0, 0, 0, 0, 0, 
	0, 0, 0, 3, 0, 3, 0, 0, 
	0, 3, 0, 0, 0, 0, 0, 0, 
	0, 3, 0, 0, 3, 0, 0, 3, 
	11, 11, 11, 11, 3, 0, 3, 0, 
	0, 0, 3, 0, 0, 0, 0, 0, 
	0, 0, 3, 0, 0, 3, 0, 0, 
	3, 0, 0, 3, 0, 0, 3, 0, 
	0, 3, 0, 0, 0, 0, 3, 0, 
	0, 0, 0, 0, 0, 3, 0, 3, 
	0, 0, 0, 3, 0, 0, 0, 0, 
	0, 0, 0, 3, 0, 0, 3, 0, 
	0, 3, 0, 0, 3, 0, 0, 3, 
	0, 0, 3, 0, 0, 3, 0, 0, 
	3, 0, 0, 3, 0, 0, 3, 0, 
	0, 3, 0, 0, 3, 0, 0, 3, 
	0, 0, 0, 0, 3, 0, 0, 0, 
	0, 0, 0, 3, 0, 3, 0, 0, 
	0, 3, 0, 0, 0, 0, 0, 0, 
	0, 3, 0, 0, 3, 0, 0, 3, 
	0, 0, 3, 0, 0, 3, 0, 0, 
	3, 0, 0, 0, 0, 3, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 3, 0, 
	3, 0, 0, 0, 3, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 3, 0, 
	0, 3, 0, 0, 3, 0, 0, 3, 
	0, 0, 3, 0, 0, 3, 11, 11, 
	11, 11, 3, 0, 3, 0, 0, 0, 
	3, 0, 0, 0, 0, 0, 0, 0, 
	3, 0, 0, 3, 0, 0, 3, 13, 
	13, 13, 13, 3, 0, 0, 3, 0, 
	0, 3, 0, 0, 3, 0, 0, 3, 
	0, 0, 3, 0, 0, 3, 0, 0, 
	3, 0, 0, 0, 0, 3, 0, 0, 
	3, 0, 0, 3, 0, 0, 3, 0, 
	0, 3, 0, 0, 3, 0, 0, 3, 
	0, 0, 0, 0, 3, 0, 0, 0, 
	0, 0, 0, 3, 0, 0, 3, 0, 
	0, 3, 0, 0, 3, 0, 0, 3, 
	7, 0, 0, 0, 0, 7, 3, 7, 
	0, 0, 0, 0, 7, 3, 0, 0, 
	3, 7, 0, 0, 0, 0, 7, 3, 
	7, 0, 0, 0, 0, 7, 3, 7, 
	0, 0, 0, 0, 7, 3, 0, 0, 
	3, 0, 0, 3, 7, 0, 0, 0, 
	0, 7, 3, 7, 0, 0, 0, 0, 
	7, 3, 7, 0, 0, 0, 0, 7, 
	3, 0, 0, 3, 0, 0, 0, 0, 
	3, 0, 0, 3, 0, 0, 3, 0, 
	0, 0, 0, 3, 0, 0, 3, 0, 
	0, 3, 0, 0, 3, 0, 0, 0, 
	0, 3, 0, 0, 0, 0, 3, 0, 
	0, 3, 0, 0, 3, 7, 0, 0, 
	0, 0, 7, 3, 7, 0, 0, 0, 
	0, 7, 3, 7, 0, 0, 0, 0, 
	7, 3, 7, 0, 0, 0, 0, 7, 
	3, 0, 0, 0, 0, 3, 0, 0, 
	3, 7, 0, 0, 0, 0, 7, 3, 
	0, 0, 3, 0, 0, 3, 0, 0, 
	0, 0, 3, 0, 0, 0, 0, 0, 
	0, 3, 0, 0, 3, 0, 0, 3, 
	0, 0, 3, 0, 0, 3, 7, 0, 
	0, 0, 0, 7, 3, 7, 0, 0, 
	0, 0, 7, 3, 0, 0, 0, 0, 
	3, 7, 0, 0, 0, 0, 7, 3, 
	7, 0, 0, 0, 0, 7, 3, 7, 
	0, 0, 0, 0, 7, 3, 7, 0, 
	0, 0, 0, 7, 3, 7, 0, 0, 
	0, 0, 7, 3, 7, 0, 0, 0, 
	0, 7, 3, 7, 0, 0, 0, 0, 
	7, 3, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 3, 0, 0, 3, 
	0, 0, 3, 7, 0, 0, 7, 3, 
	0, 3, 7, 0, 0, 3, 0, 0, 
	0, 7, 0, 0, 0, 3, 0, 0, 
	3, 0, 0, 3, 0, 0, 3, 0, 
	0, 3, 0, 0, 3, 0, 0, 3, 
	0, 0, 3, 0, 0, 3, 0, 0, 
	3, 9, 0, 0, 9, 3, 0, 3, 
	9, 0, 0, 3, 0, 0, 0, 9, 
	0, 0, 0, 0, 0, 3, 7, 0, 
	0, 0, 0, 7, 3, 0, 0, 3, 
	0, 0, 3, 0, 0, 3, 0, 0, 
	3, 0, 0, 3, 0, 0, 3, 7, 
	0, 0, 0, 0, 7, 3, 7, 0, 
	0, 0, 0, 7, 3, 0, 0, 0, 
	0, 3, 7, 0, 0, 0, 0, 7, 
	3, 7, 0, 0, 0, 0, 7, 3, 
	7, 0, 0, 0, 0, 7, 3, 0, 
	0, 3, 0, 0, 3, 0, 0, 0, 
	0, 3, 7, 0, 0, 0, 0, 7, 
	3, 7, 0, 0, 0, 0, 7, 3, 
	7, 0, 0, 0, 0, 7, 3, 0, 
	0, 3, 0, 0, 3, 0, 0, 3, 
	0, 0, 3, 0, 0, 3, 0, 0, 
	3, 7, 0, 0, 0, 0, 7, 3, 
	7, 0, 0, 0, 0, 7, 3, 7, 
	0, 0, 0, 0, 7, 3, 0, 0, 
	3, 0, 0, 3, 0, 0, 3, 0, 
	0, 3, 0, 0, 3, 0, 0, 3, 
	0, 0, 3, 0, 0, 3, 3, 0, 
	3, 7, 3, 7, 0, 0, 7, 3, 
	5, 0, 0, 5, 3, 0, 0, 0, 
	0, 3, 0, 0, 0, 0, 0, 0, 
	3, 7, 0, 0, 0, 0, 7, 3, 
	9, 0, 0, 9, 3, 0
]

class << self
	attr_accessor :_statement_eof_actions
	private :_statement_eof_actions, :_statement_eof_actions=
end
self._statement_eof_actions = [
	0, 3, 0, 0, 0, 0, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 3, 3, 
	3, 3, 3, 3, 3, 3, 0, 0, 
	0, 0, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :statement_start
end
self.statement_start = 1;
class << self
	attr_accessor :statement_first_final
end
self.statement_first_final = 294;
class << self
	attr_accessor :statement_error
end
self.statement_error = 0;

class << self
	attr_accessor :statement_en_main
end
self.statement_en_main = 1;


# line 74 "lib/vorax/parser/grammars/statement.rl"
      
# line 739 "lib/vorax/parser/grammars/statement.rb"
begin
	p ||= 0
	pe ||= data.length
	cs = statement_start
end

# line 75 "lib/vorax/parser/grammars/statement.rl"
      
# line 748 "lib/vorax/parser/grammars/statement.rb"
begin
	_klen, _trans, _keys, _acts, _nacts = nil
	_goto_level = 0
	_resume = 10
	_eof_trans = 15
	_again = 20
	_test_eof = 30
	_out = 40
	while true
	_trigger_goto = false
	if _goto_level <= 0
	if p == pe
		_goto_level = _test_eof
		next
	end
	if cs == 0
		_goto_level = _out
		next
	end
	end
	if _goto_level <= _resume
	_keys = _statement_key_offsets[cs]
	_trans = _statement_index_offsets[cs]
	_klen = _statement_single_lengths[cs]
	_break_match = false
	
	begin
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + _klen - 1

	     loop do
	        break if _upper < _lower
	        _mid = _lower + ( (_upper - _lower) >> 1 )

	        if data[p].ord < _statement_trans_keys[_mid]
	           _upper = _mid - 1
	        elsif data[p].ord > _statement_trans_keys[_mid]
	           _lower = _mid + 1
	        else
	           _trans += (_mid - _keys)
	           _break_match = true
	           break
	        end
	     end # loop
	     break if _break_match
	     _keys += _klen
	     _trans += _klen
	  end
	  _klen = _statement_range_lengths[cs]
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + (_klen << 1) - 2
	     loop do
	        break if _upper < _lower
	        _mid = _lower + (((_upper-_lower) >> 1) & ~1)
	        if data[p].ord < _statement_trans_keys[_mid]
	          _upper = _mid - 2
	        elsif data[p].ord > _statement_trans_keys[_mid+1]
	          _lower = _mid + 2
	        else
	          _trans += ((_mid - _keys) >> 1)
	          _break_match = true
	          break
	        end
	     end # loop
	     break if _break_match
	     _trans += _klen
	  end
	end while false
	cs = _statement_trans_targs[_trans]
	if _statement_trans_actions[_trans] != 0
		_acts = _statement_trans_actions[_trans]
		_nacts = _statement_actions[_acts]
		_acts += 1
		while _nacts > 0
			_nacts -= 1
			_acts += 1
			case _statement_actions[_acts - 1]
when 0 then
# line 5 "lib/vorax/parser/grammars/statement.rl"
		begin

  eof = pe
		end
when 1 then
# line 9 "lib/vorax/parser/grammars/statement.rl"
		begin

		end
when 2 then
# line 12 "lib/vorax/parser/grammars/statement.rl"
		begin

  stmt_type = 'ANONYMOUS'
		end
when 3 then
# line 16 "lib/vorax/parser/grammars/statement.rl"
		begin

  stmt_type = 'SQLPLUS'
		end
when 4 then
# line 20 "lib/vorax/parser/grammars/statement.rl"
		begin

  stmt_type = nil
		end
when 5 then
# line 24 "lib/vorax/parser/grammars/statement.rl"
		begin

  tail = data[(0...p)]
  type = tail[/\w+\Z/]
  stmt_type = type.upcase if type
		end
when 6 then
# line 30 "lib/vorax/parser/grammars/statement.rl"
		begin

  stmt_type << ' BODY'
		end
# line 871 "lib/vorax/parser/grammars/statement.rb"
			end # action switch
		end
	end
	if _trigger_goto
		next
	end
	end
	if _goto_level <= _again
	if cs == 0
		_goto_level = _out
		next
	end
	p += 1
	if p != pe
		_goto_level = _resume
		next
	end
	end
	if _goto_level <= _test_eof
	if p == eof
	__acts = _statement_eof_actions[cs]
	__nacts =  _statement_actions[__acts]
	__acts += 1
	while __nacts > 0
		__nacts -= 1
		__acts += 1
		case _statement_actions[__acts - 1]
when 1 then
# line 9 "lib/vorax/parser/grammars/statement.rl"
		begin

		end
# line 904 "lib/vorax/parser/grammars/statement.rb"
		end # eof action switch
	end
	if _trigger_goto
		next
	end
end
	end
	if _goto_level <= _out
		break
	end
	end
	end

# line 76 "lib/vorax/parser/grammars/statement.rl"
      data.chop!
      return stmt_type
    end

end

end
