defmodule Makeup.Lexers.ElixirLexer.AtomsStart do
  @moduledoc false

  # parsec:Makeup.Lexers.ElixirLexer.AtomsStart
  # This module is generated at "dev time" so that the lexer
  # doesn't have to depend on the (excelent) `unicode_set` library,
  # which takes several minutes to compile.
  import NimbleParsec

  atom_start_unicode_syntax =
    "[[:L:][:Nl:][:Other_ID_Start:]-[:Pattern_Syntax:]-[:Pattern_White_Space:][_]]"

  # TODO: Why do we need to flatten these lists? A bug in `unicode_set`?
  atom_start_chars = Unicode.Set.to_utf8_char(atom_start_unicode_syntax) |> List.flatten()

  defcombinator(:atom_start_chars, utf8_char(atom_start_chars))
  # parsec:Makeup.Lexers.ElixirLexer.AtomsStart
end