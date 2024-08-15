(require-builtin helix/core/static as helix.static.)
(provide no_op)
;;@doc
;;Do nothing
(define (no_op)
    (helix.static.no_op *helix.cx*))

(provide move_char_left)
;;@doc
;;Move left
(define (move_char_left)
    (helix.static.move_char_left *helix.cx*))

(provide move_char_right)
;;@doc
;;Move right
(define (move_char_right)
    (helix.static.move_char_right *helix.cx*))

(provide move_line_up)
;;@doc
;;Move up
(define (move_line_up)
    (helix.static.move_line_up *helix.cx*))

(provide move_line_down)
;;@doc
;;Move down
(define (move_line_down)
    (helix.static.move_line_down *helix.cx*))

(provide move_visual_line_up)
;;@doc
;;Move up
(define (move_visual_line_up)
    (helix.static.move_visual_line_up *helix.cx*))

(provide move_visual_line_down)
;;@doc
;;Move down
(define (move_visual_line_down)
    (helix.static.move_visual_line_down *helix.cx*))

(provide extend_char_left)
;;@doc
;;Extend left
(define (extend_char_left)
    (helix.static.extend_char_left *helix.cx*))

(provide extend_char_right)
;;@doc
;;Extend right
(define (extend_char_right)
    (helix.static.extend_char_right *helix.cx*))

(provide extend_line_up)
;;@doc
;;Extend up
(define (extend_line_up)
    (helix.static.extend_line_up *helix.cx*))

(provide extend_line_down)
;;@doc
;;Extend down
(define (extend_line_down)
    (helix.static.extend_line_down *helix.cx*))

(provide extend_visual_line_up)
;;@doc
;;Extend up
(define (extend_visual_line_up)
    (helix.static.extend_visual_line_up *helix.cx*))

(provide extend_visual_line_down)
;;@doc
;;Extend down
(define (extend_visual_line_down)
    (helix.static.extend_visual_line_down *helix.cx*))

(provide copy_selection_on_next_line)
;;@doc
;;Copy selection on next line
(define (copy_selection_on_next_line)
    (helix.static.copy_selection_on_next_line *helix.cx*))

(provide copy_selection_on_prev_line)
;;@doc
;;Copy selection on previous line
(define (copy_selection_on_prev_line)
    (helix.static.copy_selection_on_prev_line *helix.cx*))

(provide move_next_word_start)
;;@doc
;;Move to start of next word
(define (move_next_word_start)
    (helix.static.move_next_word_start *helix.cx*))

(provide move_prev_word_start)
;;@doc
;;Move to start of previous word
(define (move_prev_word_start)
    (helix.static.move_prev_word_start *helix.cx*))

(provide move_next_word_end)
;;@doc
;;Move to end of next word
(define (move_next_word_end)
    (helix.static.move_next_word_end *helix.cx*))

(provide move_prev_word_end)
;;@doc
;;Move to end of previous word
(define (move_prev_word_end)
    (helix.static.move_prev_word_end *helix.cx*))

(provide move_next_long_word_start)
;;@doc
;;Move to start of next long word
(define (move_next_long_word_start)
    (helix.static.move_next_long_word_start *helix.cx*))

(provide move_prev_long_word_start)
;;@doc
;;Move to start of previous long word
(define (move_prev_long_word_start)
    (helix.static.move_prev_long_word_start *helix.cx*))

(provide move_next_long_word_end)
;;@doc
;;Move to end of next long word
(define (move_next_long_word_end)
    (helix.static.move_next_long_word_end *helix.cx*))

(provide move_prev_long_word_end)
;;@doc
;;Move to end of previous long word
(define (move_prev_long_word_end)
    (helix.static.move_prev_long_word_end *helix.cx*))

(provide move_next_sub_word_start)
;;@doc
;;Move to start of next sub word
(define (move_next_sub_word_start)
    (helix.static.move_next_sub_word_start *helix.cx*))

(provide move_prev_sub_word_start)
;;@doc
;;Move to start of previous sub word
(define (move_prev_sub_word_start)
    (helix.static.move_prev_sub_word_start *helix.cx*))

(provide move_next_sub_word_end)
;;@doc
;;Move to end of next sub word
(define (move_next_sub_word_end)
    (helix.static.move_next_sub_word_end *helix.cx*))

(provide move_prev_sub_word_end)
;;@doc
;;Move to end of previous sub word
(define (move_prev_sub_word_end)
    (helix.static.move_prev_sub_word_end *helix.cx*))

(provide move_parent_node_end)
;;@doc
;;Move to end of the parent node
(define (move_parent_node_end)
    (helix.static.move_parent_node_end *helix.cx*))

(provide move_parent_node_start)
;;@doc
;;Move to beginning of the parent node
(define (move_parent_node_start)
    (helix.static.move_parent_node_start *helix.cx*))

(provide extend_next_word_start)
;;@doc
;;Extend to start of next word
(define (extend_next_word_start)
    (helix.static.extend_next_word_start *helix.cx*))

(provide extend_prev_word_start)
;;@doc
;;Extend to start of previous word
(define (extend_prev_word_start)
    (helix.static.extend_prev_word_start *helix.cx*))

(provide extend_next_word_end)
;;@doc
;;Extend to end of next word
(define (extend_next_word_end)
    (helix.static.extend_next_word_end *helix.cx*))

(provide extend_prev_word_end)
;;@doc
;;Extend to end of previous word
(define (extend_prev_word_end)
    (helix.static.extend_prev_word_end *helix.cx*))

(provide extend_next_long_word_start)
;;@doc
;;Extend to start of next long word
(define (extend_next_long_word_start)
    (helix.static.extend_next_long_word_start *helix.cx*))

(provide extend_prev_long_word_start)
;;@doc
;;Extend to start of previous long word
(define (extend_prev_long_word_start)
    (helix.static.extend_prev_long_word_start *helix.cx*))

(provide extend_next_long_word_end)
;;@doc
;;Extend to end of next long word
(define (extend_next_long_word_end)
    (helix.static.extend_next_long_word_end *helix.cx*))

(provide extend_prev_long_word_end)
;;@doc
;;Extend to end of prev long word
(define (extend_prev_long_word_end)
    (helix.static.extend_prev_long_word_end *helix.cx*))

(provide extend_next_sub_word_start)
;;@doc
;;Extend to start of next sub word
(define (extend_next_sub_word_start)
    (helix.static.extend_next_sub_word_start *helix.cx*))

(provide extend_prev_sub_word_start)
;;@doc
;;Extend to start of previous sub word
(define (extend_prev_sub_word_start)
    (helix.static.extend_prev_sub_word_start *helix.cx*))

(provide extend_next_sub_word_end)
;;@doc
;;Extend to end of next sub word
(define (extend_next_sub_word_end)
    (helix.static.extend_next_sub_word_end *helix.cx*))

(provide extend_prev_sub_word_end)
;;@doc
;;Extend to end of prev sub word
(define (extend_prev_sub_word_end)
    (helix.static.extend_prev_sub_word_end *helix.cx*))

(provide extend_parent_node_end)
;;@doc
;;Extend to end of the parent node
(define (extend_parent_node_end)
    (helix.static.extend_parent_node_end *helix.cx*))

(provide extend_parent_node_start)
;;@doc
;;Extend to beginning of the parent node
(define (extend_parent_node_start)
    (helix.static.extend_parent_node_start *helix.cx*))

(provide find_till_char)
;;@doc
;;Move till next occurrence of char
(define (find_till_char)
    (helix.static.find_till_char *helix.cx*))

(provide find_next_char)
;;@doc
;;Move to next occurrence of char
(define (find_next_char)
    (helix.static.find_next_char *helix.cx*))

(provide extend_till_char)
;;@doc
;;Extend till next occurrence of char
(define (extend_till_char)
    (helix.static.extend_till_char *helix.cx*))

(provide extend_next_char)
;;@doc
;;Extend to next occurrence of char
(define (extend_next_char)
    (helix.static.extend_next_char *helix.cx*))

(provide till_prev_char)
;;@doc
;;Move till previous occurrence of char
(define (till_prev_char)
    (helix.static.till_prev_char *helix.cx*))

(provide find_prev_char)
;;@doc
;;Move to previous occurrence of char
(define (find_prev_char)
    (helix.static.find_prev_char *helix.cx*))

(provide extend_till_prev_char)
;;@doc
;;Extend till previous occurrence of char
(define (extend_till_prev_char)
    (helix.static.extend_till_prev_char *helix.cx*))

(provide extend_prev_char)
;;@doc
;;Extend to previous occurrence of char
(define (extend_prev_char)
    (helix.static.extend_prev_char *helix.cx*))

(provide repeat_last_motion)
;;@doc
;;Repeat last motion
(define (repeat_last_motion)
    (helix.static.repeat_last_motion *helix.cx*))

(provide replace)
;;@doc
;;Replace with new char
(define (replace)
    (helix.static.replace *helix.cx*))

(provide switch_case)
;;@doc
;;Switch (toggle) case
(define (switch_case)
    (helix.static.switch_case *helix.cx*))

(provide switch_to_uppercase)
;;@doc
;;Switch to uppercase
(define (switch_to_uppercase)
    (helix.static.switch_to_uppercase *helix.cx*))

(provide switch_to_lowercase)
;;@doc
;;Switch to lowercase
(define (switch_to_lowercase)
    (helix.static.switch_to_lowercase *helix.cx*))

(provide page_up)
;;@doc
;;Move page up
(define (page_up)
    (helix.static.page_up *helix.cx*))

(provide page_down)
;;@doc
;;Move page down
(define (page_down)
    (helix.static.page_down *helix.cx*))

(provide half_page_up)
;;@doc
;;Move half page up
(define (half_page_up)
    (helix.static.half_page_up *helix.cx*))

(provide half_page_down)
;;@doc
;;Move half page down
(define (half_page_down)
    (helix.static.half_page_down *helix.cx*))

(provide page_cursor_up)
;;@doc
;;Move page and cursor up
(define (page_cursor_up)
    (helix.static.page_cursor_up *helix.cx*))

(provide page_cursor_down)
;;@doc
;;Move page and cursor down
(define (page_cursor_down)
    (helix.static.page_cursor_down *helix.cx*))

(provide page_cursor_half_up)
;;@doc
;;Move page and cursor half up
(define (page_cursor_half_up)
    (helix.static.page_cursor_half_up *helix.cx*))

(provide page_cursor_half_down)
;;@doc
;;Move page and cursor half down
(define (page_cursor_half_down)
    (helix.static.page_cursor_half_down *helix.cx*))

(provide select_all)
;;@doc
;;Select whole document
(define (select_all)
    (helix.static.select_all *helix.cx*))

(provide select_regex)
;;@doc
;;Select all regex matches inside selections
(define (select_regex)
    (helix.static.select_regex *helix.cx*))

(provide split_selection)
;;@doc
;;Split selections on regex matches
(define (split_selection)
    (helix.static.split_selection *helix.cx*))

(provide split_selection_on_newline)
;;@doc
;;Split selection on newlines
(define (split_selection_on_newline)
    (helix.static.split_selection_on_newline *helix.cx*))

(provide merge_selections)
;;@doc
;;Merge selections
(define (merge_selections)
    (helix.static.merge_selections *helix.cx*))

(provide merge_consecutive_selections)
;;@doc
;;Merge consecutive selections
(define (merge_consecutive_selections)
    (helix.static.merge_consecutive_selections *helix.cx*))

(provide search)
;;@doc
;;Search for regex pattern
(define (search)
    (helix.static.search *helix.cx*))

(provide rsearch)
;;@doc
;;Reverse search for regex pattern
(define (rsearch)
    (helix.static.rsearch *helix.cx*))

(provide search_next)
;;@doc
;;Select next search match
(define (search_next)
    (helix.static.search_next *helix.cx*))

(provide search_prev)
;;@doc
;;Select previous search match
(define (search_prev)
    (helix.static.search_prev *helix.cx*))

(provide extend_search_next)
;;@doc
;;Add next search match to selection
(define (extend_search_next)
    (helix.static.extend_search_next *helix.cx*))

(provide extend_search_prev)
;;@doc
;;Add previous search match to selection
(define (extend_search_prev)
    (helix.static.extend_search_prev *helix.cx*))

(provide search_selection)
;;@doc
;;Use current selection as search pattern
(define (search_selection)
    (helix.static.search_selection *helix.cx*))

(provide make_search_word_bounded)
;;@doc
;;Modify current search to make it word bounded
(define (make_search_word_bounded)
    (helix.static.make_search_word_bounded *helix.cx*))

(provide global_search)
;;@doc
;;Global search in workspace folder
(define (global_search)
    (helix.static.global_search *helix.cx*))

(provide extend_line)
;;@doc
;;Select current line, if already selected, extend to another line based on the anchor
(define (extend_line)
    (helix.static.extend_line *helix.cx*))

(provide extend_line_below)
;;@doc
;;Select current line, if already selected, extend to next line
(define (extend_line_below)
    (helix.static.extend_line_below *helix.cx*))

(provide extend_line_above)
;;@doc
;;Select current line, if already selected, extend to previous line
(define (extend_line_above)
    (helix.static.extend_line_above *helix.cx*))

(provide select_line_above)
;;@doc
;;Select current line, if already selected, extend or shrink line above based on the anchor
(define (select_line_above)
    (helix.static.select_line_above *helix.cx*))

(provide select_line_below)
;;@doc
;;Select current line, if already selected, extend or shrink line below based on the anchor
(define (select_line_below)
    (helix.static.select_line_below *helix.cx*))

(provide extend_to_line_bounds)
;;@doc
;;Extend selection to line bounds
(define (extend_to_line_bounds)
    (helix.static.extend_to_line_bounds *helix.cx*))

(provide shrink_to_line_bounds)
;;@doc
;;Shrink selection to line bounds
(define (shrink_to_line_bounds)
    (helix.static.shrink_to_line_bounds *helix.cx*))

(provide delete_selection)
;;@doc
;;Delete selection
(define (delete_selection)
    (helix.static.delete_selection *helix.cx*))

(provide delete_selection_noyank)
;;@doc
;;Delete selection without yanking
(define (delete_selection_noyank)
    (helix.static.delete_selection_noyank *helix.cx*))

(provide change_selection)
;;@doc
;;Change selection
(define (change_selection)
    (helix.static.change_selection *helix.cx*))

(provide change_selection_noyank)
;;@doc
;;Change selection without yanking
(define (change_selection_noyank)
    (helix.static.change_selection_noyank *helix.cx*))

(provide collapse_selection)
;;@doc
;;Collapse selection into single cursor
(define (collapse_selection)
    (helix.static.collapse_selection *helix.cx*))

(provide flip_selections)
;;@doc
;;Flip selection cursor and anchor
(define (flip_selections)
    (helix.static.flip_selections *helix.cx*))

(provide ensure_selections_forward)
;;@doc
;;Ensure all selections face forward
(define (ensure_selections_forward)
    (helix.static.ensure_selections_forward *helix.cx*))

(provide insert_mode)
;;@doc
;;Insert before selection
(define (insert_mode)
    (helix.static.insert_mode *helix.cx*))

(provide append_mode)
;;@doc
;;Append after selection
(define (append_mode)
    (helix.static.append_mode *helix.cx*))

(provide command_mode)
;;@doc
;;Enter command mode
(define (command_mode)
    (helix.static.command_mode *helix.cx*))

(provide file_picker)
;;@doc
;;Open file picker
(define (file_picker)
    (helix.static.file_picker *helix.cx*))

(provide file_picker_in_current_buffer_directory)
;;@doc
;;Open file picker at current buffer's directory
(define (file_picker_in_current_buffer_directory)
    (helix.static.file_picker_in_current_buffer_directory *helix.cx*))

(provide file_picker_in_current_directory)
;;@doc
;;Open file picker at current working directory
(define (file_picker_in_current_directory)
    (helix.static.file_picker_in_current_directory *helix.cx*))

(provide code_action)
;;@doc
;;Perform code action
(define (code_action)
    (helix.static.code_action *helix.cx*))

(provide buffer_picker)
;;@doc
;;Open buffer picker
(define (buffer_picker)
    (helix.static.buffer_picker *helix.cx*))

(provide jumplist_picker)
;;@doc
;;Open jumplist picker
(define (jumplist_picker)
    (helix.static.jumplist_picker *helix.cx*))

(provide symbol_picker)
;;@doc
;;Open symbol picker
(define (symbol_picker)
    (helix.static.symbol_picker *helix.cx*))

(provide changed_file_picker)
;;@doc
;;Open changed file picker
(define (changed_file_picker)
    (helix.static.changed_file_picker *helix.cx*))

(provide select_references_to_symbol_under_cursor)
;;@doc
;;Select symbol references
(define (select_references_to_symbol_under_cursor)
    (helix.static.select_references_to_symbol_under_cursor *helix.cx*))

(provide workspace_symbol_picker)
;;@doc
;;Open workspace symbol picker
(define (workspace_symbol_picker)
    (helix.static.workspace_symbol_picker *helix.cx*))

(provide diagnostics_picker)
;;@doc
;;Open diagnostic picker
(define (diagnostics_picker)
    (helix.static.diagnostics_picker *helix.cx*))

(provide workspace_diagnostics_picker)
;;@doc
;;Open workspace diagnostic picker
(define (workspace_diagnostics_picker)
    (helix.static.workspace_diagnostics_picker *helix.cx*))

(provide last_picker)
;;@doc
;;Open last picker
(define (last_picker)
    (helix.static.last_picker *helix.cx*))

(provide insert_at_line_start)
;;@doc
;;Insert at start of line
(define (insert_at_line_start)
    (helix.static.insert_at_line_start *helix.cx*))

(provide insert_at_line_end)
;;@doc
;;Insert at end of line
(define (insert_at_line_end)
    (helix.static.insert_at_line_end *helix.cx*))

(provide open_below)
;;@doc
;;Open new line below selection
(define (open_below)
    (helix.static.open_below *helix.cx*))

(provide open_above)
;;@doc
;;Open new line above selection
(define (open_above)
    (helix.static.open_above *helix.cx*))

(provide normal_mode)
;;@doc
;;Enter normal mode
(define (normal_mode)
    (helix.static.normal_mode *helix.cx*))

(provide select_mode)
;;@doc
;;Enter selection extend mode
(define (select_mode)
    (helix.static.select_mode *helix.cx*))

(provide exit_select_mode)
;;@doc
;;Exit selection mode
(define (exit_select_mode)
    (helix.static.exit_select_mode *helix.cx*))

(provide goto_definition)
;;@doc
;;Goto definition
(define (goto_definition)
    (helix.static.goto_definition *helix.cx*))

(provide goto_declaration)
;;@doc
;;Goto declaration
(define (goto_declaration)
    (helix.static.goto_declaration *helix.cx*))

(provide add_newline_above)
;;@doc
;;Add newline above
(define (add_newline_above)
    (helix.static.add_newline_above *helix.cx*))

(provide add_newline_below)
;;@doc
;;Add newline below
(define (add_newline_below)
    (helix.static.add_newline_below *helix.cx*))

(provide goto_type_definition)
;;@doc
;;Goto type definition
(define (goto_type_definition)
    (helix.static.goto_type_definition *helix.cx*))

(provide goto_implementation)
;;@doc
;;Goto implementation
(define (goto_implementation)
    (helix.static.goto_implementation *helix.cx*))

(provide goto_file_start)
;;@doc
;;Goto line number <n> else file start
(define (goto_file_start)
    (helix.static.goto_file_start *helix.cx*))

(provide goto_file_end)
;;@doc
;;Goto file end
(define (goto_file_end)
    (helix.static.goto_file_end *helix.cx*))

(provide goto_file)
;;@doc
;;Goto files/URLs in selections
(define (goto_file)
    (helix.static.goto_file *helix.cx*))

(provide goto_file_hsplit)
;;@doc
;;Goto files in selections (hsplit)
(define (goto_file_hsplit)
    (helix.static.goto_file_hsplit *helix.cx*))

(provide goto_file_vsplit)
;;@doc
;;Goto files in selections (vsplit)
(define (goto_file_vsplit)
    (helix.static.goto_file_vsplit *helix.cx*))

(provide goto_reference)
;;@doc
;;Goto references
(define (goto_reference)
    (helix.static.goto_reference *helix.cx*))

(provide goto_window_top)
;;@doc
;;Goto window top
(define (goto_window_top)
    (helix.static.goto_window_top *helix.cx*))

(provide goto_window_center)
;;@doc
;;Goto window center
(define (goto_window_center)
    (helix.static.goto_window_center *helix.cx*))

(provide goto_window_bottom)
;;@doc
;;Goto window bottom
(define (goto_window_bottom)
    (helix.static.goto_window_bottom *helix.cx*))

(provide goto_last_accessed_file)
;;@doc
;;Goto last accessed file
(define (goto_last_accessed_file)
    (helix.static.goto_last_accessed_file *helix.cx*))

(provide goto_last_modified_file)
;;@doc
;;Goto last modified file
(define (goto_last_modified_file)
    (helix.static.goto_last_modified_file *helix.cx*))

(provide goto_last_modification)
;;@doc
;;Goto last modification
(define (goto_last_modification)
    (helix.static.goto_last_modification *helix.cx*))

(provide goto_line)
;;@doc
;;Goto line
(define (goto_line)
    (helix.static.goto_line *helix.cx*))

(provide goto_last_line)
;;@doc
;;Goto last line
(define (goto_last_line)
    (helix.static.goto_last_line *helix.cx*))

(provide goto_first_diag)
;;@doc
;;Goto first diagnostic
(define (goto_first_diag)
    (helix.static.goto_first_diag *helix.cx*))

(provide goto_last_diag)
;;@doc
;;Goto last diagnostic
(define (goto_last_diag)
    (helix.static.goto_last_diag *helix.cx*))

(provide goto_next_diag)
;;@doc
;;Goto next diagnostic
(define (goto_next_diag)
    (helix.static.goto_next_diag *helix.cx*))

(provide goto_prev_diag)
;;@doc
;;Goto previous diagnostic
(define (goto_prev_diag)
    (helix.static.goto_prev_diag *helix.cx*))

(provide goto_next_change)
;;@doc
;;Goto next change
(define (goto_next_change)
    (helix.static.goto_next_change *helix.cx*))

(provide goto_prev_change)
;;@doc
;;Goto previous change
(define (goto_prev_change)
    (helix.static.goto_prev_change *helix.cx*))

(provide goto_first_change)
;;@doc
;;Goto first change
(define (goto_first_change)
    (helix.static.goto_first_change *helix.cx*))

(provide goto_last_change)
;;@doc
;;Goto last change
(define (goto_last_change)
    (helix.static.goto_last_change *helix.cx*))

(provide goto_line_start)
;;@doc
;;Goto line start
(define (goto_line_start)
    (helix.static.goto_line_start *helix.cx*))

(provide goto_line_end)
;;@doc
;;Goto line end
(define (goto_line_end)
    (helix.static.goto_line_end *helix.cx*))

(provide goto_next_buffer)
;;@doc
;;Goto next buffer
(define (goto_next_buffer)
    (helix.static.goto_next_buffer *helix.cx*))

(provide goto_previous_buffer)
;;@doc
;;Goto previous buffer
(define (goto_previous_buffer)
    (helix.static.goto_previous_buffer *helix.cx*))

(provide goto_line_end_newline)
;;@doc
;;Goto newline at line end
(define (goto_line_end_newline)
    (helix.static.goto_line_end_newline *helix.cx*))

(provide goto_first_nonwhitespace)
;;@doc
;;Goto first non-blank in line
(define (goto_first_nonwhitespace)
    (helix.static.goto_first_nonwhitespace *helix.cx*))

(provide trim_selections)
;;@doc
;;Trim whitespace from selections
(define (trim_selections)
    (helix.static.trim_selections *helix.cx*))

(provide extend_to_line_start)
;;@doc
;;Extend to line start
(define (extend_to_line_start)
    (helix.static.extend_to_line_start *helix.cx*))

(provide extend_to_first_nonwhitespace)
;;@doc
;;Extend to first non-blank in line
(define (extend_to_first_nonwhitespace)
    (helix.static.extend_to_first_nonwhitespace *helix.cx*))

(provide extend_to_line_end)
;;@doc
;;Extend to line end
(define (extend_to_line_end)
    (helix.static.extend_to_line_end *helix.cx*))

(provide extend_to_line_end_newline)
;;@doc
;;Extend to line end
(define (extend_to_line_end_newline)
    (helix.static.extend_to_line_end_newline *helix.cx*))

(provide signature_help)
;;@doc
;;Show signature help
(define (signature_help)
    (helix.static.signature_help *helix.cx*))

(provide smart_tab)
;;@doc
;;Insert tab if all cursors have all whitespace to their left; otherwise, run a separate command.
(define (smart_tab)
    (helix.static.smart_tab *helix.cx*))

(provide insert_tab)
;;@doc
;;Insert tab char
(define (insert_tab)
    (helix.static.insert_tab *helix.cx*))

(provide insert_newline)
;;@doc
;;Insert newline char
(define (insert_newline)
    (helix.static.insert_newline *helix.cx*))

(provide delete_char_backward)
;;@doc
;;Delete previous char
(define (delete_char_backward)
    (helix.static.delete_char_backward *helix.cx*))

(provide delete_char_forward)
;;@doc
;;Delete next char
(define (delete_char_forward)
    (helix.static.delete_char_forward *helix.cx*))

(provide delete_word_backward)
;;@doc
;;Delete previous word
(define (delete_word_backward)
    (helix.static.delete_word_backward *helix.cx*))

(provide delete_word_forward)
;;@doc
;;Delete next word
(define (delete_word_forward)
    (helix.static.delete_word_forward *helix.cx*))

(provide kill_to_line_start)
;;@doc
;;Delete till start of line
(define (kill_to_line_start)
    (helix.static.kill_to_line_start *helix.cx*))

(provide kill_to_line_end)
;;@doc
;;Delete till end of line
(define (kill_to_line_end)
    (helix.static.kill_to_line_end *helix.cx*))

(provide undo)
;;@doc
;;Undo change
(define (undo)
    (helix.static.undo *helix.cx*))

(provide redo)
;;@doc
;;Redo change
(define (redo)
    (helix.static.redo *helix.cx*))

(provide earlier)
;;@doc
;;Move backward in history
(define (earlier)
    (helix.static.earlier *helix.cx*))

(provide later)
;;@doc
;;Move forward in history
(define (later)
    (helix.static.later *helix.cx*))

(provide commit_undo_checkpoint)
;;@doc
;;Commit changes to new checkpoint
(define (commit_undo_checkpoint)
    (helix.static.commit_undo_checkpoint *helix.cx*))

(provide yank)
;;@doc
;;Yank selection
(define (yank)
    (helix.static.yank *helix.cx*))

(provide yank_to_clipboard)
;;@doc
;;Yank selections to clipboard
(define (yank_to_clipboard)
    (helix.static.yank_to_clipboard *helix.cx*))

(provide yank_to_primary_clipboard)
;;@doc
;;Yank selections to primary clipboard
(define (yank_to_primary_clipboard)
    (helix.static.yank_to_primary_clipboard *helix.cx*))

(provide yank_joined)
;;@doc
;;Join and yank selections
(define (yank_joined)
    (helix.static.yank_joined *helix.cx*))

(provide yank_joined_to_clipboard)
;;@doc
;;Join and yank selections to clipboard
(define (yank_joined_to_clipboard)
    (helix.static.yank_joined_to_clipboard *helix.cx*))

(provide yank_main_selection_to_clipboard)
;;@doc
;;Yank main selection to clipboard
(define (yank_main_selection_to_clipboard)
    (helix.static.yank_main_selection_to_clipboard *helix.cx*))

(provide yank_joined_to_primary_clipboard)
;;@doc
;;Join and yank selections to primary clipboard
(define (yank_joined_to_primary_clipboard)
    (helix.static.yank_joined_to_primary_clipboard *helix.cx*))

(provide yank_main_selection_to_primary_clipboard)
;;@doc
;;Yank main selection to primary clipboard
(define (yank_main_selection_to_primary_clipboard)
    (helix.static.yank_main_selection_to_primary_clipboard *helix.cx*))

(provide replace_with_yanked)
;;@doc
;;Replace with yanked text
(define (replace_with_yanked)
    (helix.static.replace_with_yanked *helix.cx*))

(provide replace_selections_with_clipboard)
;;@doc
;;Replace selections by clipboard content
(define (replace_selections_with_clipboard)
    (helix.static.replace_selections_with_clipboard *helix.cx*))

(provide replace_selections_with_primary_clipboard)
;;@doc
;;Replace selections by primary clipboard
(define (replace_selections_with_primary_clipboard)
    (helix.static.replace_selections_with_primary_clipboard *helix.cx*))

(provide paste_after)
;;@doc
;;Paste after selection
(define (paste_after)
    (helix.static.paste_after *helix.cx*))

(provide paste_before)
;;@doc
;;Paste before selection
(define (paste_before)
    (helix.static.paste_before *helix.cx*))

(provide paste_clipboard_after)
;;@doc
;;Paste clipboard after selections
(define (paste_clipboard_after)
    (helix.static.paste_clipboard_after *helix.cx*))

(provide paste_clipboard_before)
;;@doc
;;Paste clipboard before selections
(define (paste_clipboard_before)
    (helix.static.paste_clipboard_before *helix.cx*))

(provide paste_primary_clipboard_after)
;;@doc
;;Paste primary clipboard after selections
(define (paste_primary_clipboard_after)
    (helix.static.paste_primary_clipboard_after *helix.cx*))

(provide paste_primary_clipboard_before)
;;@doc
;;Paste primary clipboard before selections
(define (paste_primary_clipboard_before)
    (helix.static.paste_primary_clipboard_before *helix.cx*))

(provide indent)
;;@doc
;;Indent selection
(define (indent)
    (helix.static.indent *helix.cx*))

(provide unindent)
;;@doc
;;Unindent selection
(define (unindent)
    (helix.static.unindent *helix.cx*))

(provide format_selections)
;;@doc
;;Format selection
(define (format_selections)
    (helix.static.format_selections *helix.cx*))

(provide join_selections)
;;@doc
;;Join lines inside selection
(define (join_selections)
    (helix.static.join_selections *helix.cx*))

(provide join_selections_space)
;;@doc
;;Join lines inside selection and select spaces
(define (join_selections_space)
    (helix.static.join_selections_space *helix.cx*))

(provide keep_selections)
;;@doc
;;Keep selections matching regex
(define (keep_selections)
    (helix.static.keep_selections *helix.cx*))

(provide remove_selections)
;;@doc
;;Remove selections matching regex
(define (remove_selections)
    (helix.static.remove_selections *helix.cx*))

(provide align_selections)
;;@doc
;;Align selections in column
(define (align_selections)
    (helix.static.align_selections *helix.cx*))

(provide keep_primary_selection)
;;@doc
;;Keep primary selection
(define (keep_primary_selection)
    (helix.static.keep_primary_selection *helix.cx*))

(provide remove_primary_selection)
;;@doc
;;Remove primary selection
(define (remove_primary_selection)
    (helix.static.remove_primary_selection *helix.cx*))

(provide completion)
;;@doc
;;Invoke completion popup
(define (completion)
    (helix.static.completion *helix.cx*))

(provide hover)
;;@doc
;;Show docs for item under cursor
(define (hover)
    (helix.static.hover *helix.cx*))

(provide toggle_comments)
;;@doc
;;Comment/uncomment selections
(define (toggle_comments)
    (helix.static.toggle_comments *helix.cx*))

(provide toggle_line_comments)
;;@doc
;;Line comment/uncomment selections
(define (toggle_line_comments)
    (helix.static.toggle_line_comments *helix.cx*))

(provide toggle_block_comments)
;;@doc
;;Block comment/uncomment selections
(define (toggle_block_comments)
    (helix.static.toggle_block_comments *helix.cx*))

(provide rotate_selections_forward)
;;@doc
;;Rotate selections forward
(define (rotate_selections_forward)
    (helix.static.rotate_selections_forward *helix.cx*))

(provide rotate_selections_backward)
;;@doc
;;Rotate selections backward
(define (rotate_selections_backward)
    (helix.static.rotate_selections_backward *helix.cx*))

(provide rotate_selection_contents_forward)
;;@doc
;;Rotate selection contents forward
(define (rotate_selection_contents_forward)
    (helix.static.rotate_selection_contents_forward *helix.cx*))

(provide rotate_selection_contents_backward)
;;@doc
;;Rotate selections contents backward
(define (rotate_selection_contents_backward)
    (helix.static.rotate_selection_contents_backward *helix.cx*))

(provide reverse_selection_contents)
;;@doc
;;Reverse selections contents
(define (reverse_selection_contents)
    (helix.static.reverse_selection_contents *helix.cx*))

(provide expand_selection)
;;@doc
;;Expand selection to parent syntax node
(define (expand_selection)
    (helix.static.expand_selection *helix.cx*))

(provide shrink_selection)
;;@doc
;;Shrink selection to previously expanded syntax node
(define (shrink_selection)
    (helix.static.shrink_selection *helix.cx*))

(provide select_next_sibling)
;;@doc
;;Select next sibling in the syntax tree
(define (select_next_sibling)
    (helix.static.select_next_sibling *helix.cx*))

(provide select_prev_sibling)
;;@doc
;;Select previous sibling the in syntax tree
(define (select_prev_sibling)
    (helix.static.select_prev_sibling *helix.cx*))

(provide select_all_siblings)
;;@doc
;;Select all siblings of the current node
(define (select_all_siblings)
    (helix.static.select_all_siblings *helix.cx*))

(provide select_all_children)
;;@doc
;;Select all children of the current node
(define (select_all_children)
    (helix.static.select_all_children *helix.cx*))

(provide jump_forward)
;;@doc
;;Jump forward on jumplist
(define (jump_forward)
    (helix.static.jump_forward *helix.cx*))

(provide jump_backward)
;;@doc
;;Jump backward on jumplist
(define (jump_backward)
    (helix.static.jump_backward *helix.cx*))

(provide save_selection)
;;@doc
;;Save current selection to jumplist
(define (save_selection)
    (helix.static.save_selection *helix.cx*))

(provide jump_view_right)
;;@doc
;;Jump to right split
(define (jump_view_right)
    (helix.static.jump_view_right *helix.cx*))

(provide jump_view_left)
;;@doc
;;Jump to left split
(define (jump_view_left)
    (helix.static.jump_view_left *helix.cx*))

(provide jump_view_up)
;;@doc
;;Jump to split above
(define (jump_view_up)
    (helix.static.jump_view_up *helix.cx*))

(provide jump_view_down)
;;@doc
;;Jump to split below
(define (jump_view_down)
    (helix.static.jump_view_down *helix.cx*))

(provide swap_view_right)
;;@doc
;;Swap with right split
(define (swap_view_right)
    (helix.static.swap_view_right *helix.cx*))

(provide swap_view_left)
;;@doc
;;Swap with left split
(define (swap_view_left)
    (helix.static.swap_view_left *helix.cx*))

(provide swap_view_up)
;;@doc
;;Swap with split above
(define (swap_view_up)
    (helix.static.swap_view_up *helix.cx*))

(provide swap_view_down)
;;@doc
;;Swap with split below
(define (swap_view_down)
    (helix.static.swap_view_down *helix.cx*))

(provide transpose_view)
;;@doc
;;Transpose splits
(define (transpose_view)
    (helix.static.transpose_view *helix.cx*))

(provide rotate_view)
;;@doc
;;Goto next window
(define (rotate_view)
    (helix.static.rotate_view *helix.cx*))

(provide rotate_view_reverse)
;;@doc
;;Goto previous window
(define (rotate_view_reverse)
    (helix.static.rotate_view_reverse *helix.cx*))

(provide hsplit)
;;@doc
;;Horizontal bottom split
(define (hsplit)
    (helix.static.hsplit *helix.cx*))

(provide hsplit_new)
;;@doc
;;Horizontal bottom split scratch buffer
(define (hsplit_new)
    (helix.static.hsplit_new *helix.cx*))

(provide vsplit)
;;@doc
;;Vertical right split
(define (vsplit)
    (helix.static.vsplit *helix.cx*))

(provide vsplit_new)
;;@doc
;;Vertical right split scratch buffer
(define (vsplit_new)
    (helix.static.vsplit_new *helix.cx*))

(provide wclose)
;;@doc
;;Close window
(define (wclose)
    (helix.static.wclose *helix.cx*))

(provide wonly)
;;@doc
;;Close windows except current
(define (wonly)
    (helix.static.wonly *helix.cx*))

(provide select_register)
;;@doc
;;Select register
(define (select_register)
    (helix.static.select_register *helix.cx*))

(provide insert_register)
;;@doc
;;Insert register
(define (insert_register)
    (helix.static.insert_register *helix.cx*))

(provide align_view_middle)
;;@doc
;;Align view middle
(define (align_view_middle)
    (helix.static.align_view_middle *helix.cx*))

(provide align_view_top)
;;@doc
;;Align view top
(define (align_view_top)
    (helix.static.align_view_top *helix.cx*))

(provide align_view_center)
;;@doc
;;Align view center
(define (align_view_center)
    (helix.static.align_view_center *helix.cx*))

(provide align_view_bottom)
;;@doc
;;Align view bottom
(define (align_view_bottom)
    (helix.static.align_view_bottom *helix.cx*))

(provide scroll_up)
;;@doc
;;Scroll view up
(define (scroll_up)
    (helix.static.scroll_up *helix.cx*))

(provide scroll_down)
;;@doc
;;Scroll view down
(define (scroll_down)
    (helix.static.scroll_down *helix.cx*))

(provide match_brackets)
;;@doc
;;Goto matching bracket
(define (match_brackets)
    (helix.static.match_brackets *helix.cx*))

(provide surround_add)
;;@doc
;;Surround add
(define (surround_add)
    (helix.static.surround_add *helix.cx*))

(provide surround_replace)
;;@doc
;;Surround replace
(define (surround_replace)
    (helix.static.surround_replace *helix.cx*))

(provide surround_delete)
;;@doc
;;Surround delete
(define (surround_delete)
    (helix.static.surround_delete *helix.cx*))

(provide select_textobject_around)
;;@doc
;;Select around object
(define (select_textobject_around)
    (helix.static.select_textobject_around *helix.cx*))

(provide select_textobject_inner)
;;@doc
;;Select inside object
(define (select_textobject_inner)
    (helix.static.select_textobject_inner *helix.cx*))

(provide goto_next_function)
;;@doc
;;Goto next function
(define (goto_next_function)
    (helix.static.goto_next_function *helix.cx*))

(provide goto_prev_function)
;;@doc
;;Goto previous function
(define (goto_prev_function)
    (helix.static.goto_prev_function *helix.cx*))

(provide goto_next_class)
;;@doc
;;Goto next type definition
(define (goto_next_class)
    (helix.static.goto_next_class *helix.cx*))

(provide goto_prev_class)
;;@doc
;;Goto previous type definition
(define (goto_prev_class)
    (helix.static.goto_prev_class *helix.cx*))

(provide goto_next_parameter)
;;@doc
;;Goto next parameter
(define (goto_next_parameter)
    (helix.static.goto_next_parameter *helix.cx*))

(provide goto_prev_parameter)
;;@doc
;;Goto previous parameter
(define (goto_prev_parameter)
    (helix.static.goto_prev_parameter *helix.cx*))

(provide goto_next_comment)
;;@doc
;;Goto next comment
(define (goto_next_comment)
    (helix.static.goto_next_comment *helix.cx*))

(provide goto_prev_comment)
;;@doc
;;Goto previous comment
(define (goto_prev_comment)
    (helix.static.goto_prev_comment *helix.cx*))

(provide goto_next_test)
;;@doc
;;Goto next test
(define (goto_next_test)
    (helix.static.goto_next_test *helix.cx*))

(provide goto_prev_test)
;;@doc
;;Goto previous test
(define (goto_prev_test)
    (helix.static.goto_prev_test *helix.cx*))

(provide goto_next_entry)
;;@doc
;;Goto next pairing
(define (goto_next_entry)
    (helix.static.goto_next_entry *helix.cx*))

(provide goto_prev_entry)
;;@doc
;;Goto previous pairing
(define (goto_prev_entry)
    (helix.static.goto_prev_entry *helix.cx*))

(provide goto_next_paragraph)
;;@doc
;;Goto next paragraph
(define (goto_next_paragraph)
    (helix.static.goto_next_paragraph *helix.cx*))

(provide goto_prev_paragraph)
;;@doc
;;Goto previous paragraph
(define (goto_prev_paragraph)
    (helix.static.goto_prev_paragraph *helix.cx*))

(provide dap_launch)
;;@doc
;;Launch debug target
(define (dap_launch)
    (helix.static.dap_launch *helix.cx*))

(provide dap_restart)
;;@doc
;;Restart debugging session
(define (dap_restart)
    (helix.static.dap_restart *helix.cx*))

(provide dap_toggle_breakpoint)
;;@doc
;;Toggle breakpoint
(define (dap_toggle_breakpoint)
    (helix.static.dap_toggle_breakpoint *helix.cx*))

(provide dap_continue)
;;@doc
;;Continue program execution
(define (dap_continue)
    (helix.static.dap_continue *helix.cx*))

(provide dap_pause)
;;@doc
;;Pause program execution
(define (dap_pause)
    (helix.static.dap_pause *helix.cx*))

(provide dap_step_in)
;;@doc
;;Step in
(define (dap_step_in)
    (helix.static.dap_step_in *helix.cx*))

(provide dap_step_out)
;;@doc
;;Step out
(define (dap_step_out)
    (helix.static.dap_step_out *helix.cx*))

(provide dap_next)
;;@doc
;;Step to next
(define (dap_next)
    (helix.static.dap_next *helix.cx*))

(provide dap_variables)
;;@doc
;;List variables
(define (dap_variables)
    (helix.static.dap_variables *helix.cx*))

(provide dap_terminate)
;;@doc
;;End debug session
(define (dap_terminate)
    (helix.static.dap_terminate *helix.cx*))

(provide dap_edit_condition)
;;@doc
;;Edit breakpoint condition on current line
(define (dap_edit_condition)
    (helix.static.dap_edit_condition *helix.cx*))

(provide dap_edit_log)
;;@doc
;;Edit breakpoint log message on current line
(define (dap_edit_log)
    (helix.static.dap_edit_log *helix.cx*))

(provide dap_switch_thread)
;;@doc
;;Switch current thread
(define (dap_switch_thread)
    (helix.static.dap_switch_thread *helix.cx*))

(provide dap_switch_stack_frame)
;;@doc
;;Switch stack frame
(define (dap_switch_stack_frame)
    (helix.static.dap_switch_stack_frame *helix.cx*))

(provide dap_enable_exceptions)
;;@doc
;;Enable exception breakpoints
(define (dap_enable_exceptions)
    (helix.static.dap_enable_exceptions *helix.cx*))

(provide dap_disable_exceptions)
;;@doc
;;Disable exception breakpoints
(define (dap_disable_exceptions)
    (helix.static.dap_disable_exceptions *helix.cx*))

(provide shell_pipe)
;;@doc
;;Pipe selections through shell command
(define (shell_pipe)
    (helix.static.shell_pipe *helix.cx*))

(provide shell_pipe_to)
;;@doc
;;Pipe selections into shell command ignoring output
(define (shell_pipe_to)
    (helix.static.shell_pipe_to *helix.cx*))

(provide shell_insert_output)
;;@doc
;;Insert shell command output before selections
(define (shell_insert_output)
    (helix.static.shell_insert_output *helix.cx*))

(provide shell_append_output)
;;@doc
;;Append shell command output after selections
(define (shell_append_output)
    (helix.static.shell_append_output *helix.cx*))

(provide shell_keep_pipe)
;;@doc
;;Filter selections with shell predicate
(define (shell_keep_pipe)
    (helix.static.shell_keep_pipe *helix.cx*))

(provide suspend)
;;@doc
;;Suspend and return to shell
(define (suspend)
    (helix.static.suspend *helix.cx*))

(provide rename_symbol)
;;@doc
;;Rename symbol
(define (rename_symbol)
    (helix.static.rename_symbol *helix.cx*))

(provide increment)
;;@doc
;;Increment item under cursor
(define (increment)
    (helix.static.increment *helix.cx*))

(provide decrement)
;;@doc
;;Decrement item under cursor
(define (decrement)
    (helix.static.decrement *helix.cx*))

(provide record_macro)
;;@doc
;;Record macro
(define (record_macro)
    (helix.static.record_macro *helix.cx*))

(provide replay_macro)
;;@doc
;;Replay macro
(define (replay_macro)
    (helix.static.replay_macro *helix.cx*))

(provide command_palette)
;;@doc
;;Open command palette
(define (command_palette)
    (helix.static.command_palette *helix.cx*))

(provide goto_word)
;;@doc
;;Jump to a two-character label
(define (goto_word)
    (helix.static.goto_word *helix.cx*))

(provide extend_to_word)
;;@doc
;;Extend to a two-character label
(define (extend_to_word)
    (helix.static.extend_to_word *helix.cx*))

(provide goto_next_tabstop)
;;@doc
;;goto next snippet placeholder
(define (goto_next_tabstop)
    (helix.static.goto_next_tabstop *helix.cx*))

(provide goto_prev_tabstop)
;;@doc
;;goto next snippet placeholder
(define (goto_prev_tabstop)
    (helix.static.goto_prev_tabstop *helix.cx*))

(provide open_or_focus_explorer)
;;@doc
;;Open or focus explorer
(define (open_or_focus_explorer)
    (helix.static.open_or_focus_explorer *helix.cx*))

(provide reveal_current_file)
;;@doc
;;Reveal current file in explorer
(define (reveal_current_file)
    (helix.static.reveal_current_file *helix.cx*))

(provide insert_char)
;;@doc
;;Insert a given character at the cursor cursor position
(define (insert_char arg)
    (helix.static.insert_char *helix.cx* arg))

(provide insert_string)
;;@doc
;;Insert a given string at the current cursor position
(define (insert_string arg)
    (helix.static.insert_string *helix.cx* arg))

(provide set-current-selection-object!)
;;@doc
;;Update the selection object to the current selection within the editor
(define (set-current-selection-object! arg)
    (helix.static.set-current-selection-object! *helix.cx* arg))

(provide regex-selection)
;;@doc
;;Run the given regex within the existing buffer
(define (regex-selection arg)
    (helix.static.regex-selection *helix.cx* arg))

(provide replace-selection-with)
;;@doc
;;Replace the existing selection with the given string
(define (replace-selection-with arg)
    (helix.static.replace-selection-with *helix.cx* arg))

(provide cx->current-file)
;;@doc
;;Get the currently focused file path
(define (cx->current-file arg)
    (helix.static.cx->current-file *helix.cx* arg))

(provide enqueue-expression-in-engine)
;;@doc
;;Enqueue an expression to run at the top level context, 
;;        after the existing function context has exited.
(define (enqueue-expression-in-engine arg)
    (helix.static.enqueue-expression-in-engine *helix.cx* arg))

(provide current_selection)
(define (current_selection)
    (helix.static.current_selection *helix.cx*))

(provide load-buffer!)
(define (load-buffer!)
    (helix.static.load-buffer! *helix.cx*))

(provide current-highlighted-text!)
(define (current-highlighted-text!)
    (helix.static.current-highlighted-text! *helix.cx*))

(provide get-current-line-number)
(define (get-current-line-number)
    (helix.static.get-current-line-number *helix.cx*))

(provide current-selection-object)
(define (current-selection-object)
    (helix.static.current-selection-object *helix.cx*))

(provide get-helix-cwd)
(define (get-helix-cwd)
    (helix.static.get-helix-cwd *helix.cx*))

(provide move-window-far-left)
(define (move-window-far-left)
    (helix.static.move-window-far-left *helix.cx*))

(provide move-window-far-right)
(define (move-window-far-right)
    (helix.static.move-window-far-right *helix.cx*))

(provide get-helix-scm-path)
(define get-helix-scm-path helix.static.get-helix-scm-path)                
            
(provide get-init-scm-path)
(define get-init-scm-path helix.static.get-init-scm-path)                
            