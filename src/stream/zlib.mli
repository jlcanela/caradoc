(*****************************************************************************)
(*  Caradoc: a PDF parser and validator                                      *)
(*  Copyright (C) 2015 ANSSI                                                 *)
(*                                                                           *)
(*  This program is free software; you can redistribute it and/or modify     *)
(*  it under the terms of the GNU General Public License version 2 as        *)
(*  published by the Free Software Foundation.                               *)
(*                                                                           *)
(*  This program is distributed in the hope that it will be useful,          *)
(*  but WITHOUT ANY WARRANTY; without even the implied warranty of           *)
(*  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the            *)
(*  GNU General Public License for more details.                             *)
(*                                                                           *)
(*  You should have received a copy of the GNU General Public License along  *)
(*  with this program; if not, write to the Free Software Foundation, Inc.,  *)
(*  51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.              *)
(*****************************************************************************)


module Zlib : sig

  (*   Compute the Adler 32 check function
       Args    :
       - input string
       Returns :
       - Adler 32 of the string
  *)
  val adler32 : string -> int32

  (*   Decompress a Zlib stream
       Args    :
       - input string
       Returns :
       - decoded string or None if decoding error
  *)
  val decode : string -> string option

  (*   Compress a Zlib stream
       Args    :
       - input string
       Returns :
       - encoded string
  *)
  val encode : string -> string

end
