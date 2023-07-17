--    _                               _        _      _____ _  _
--   (_) __ _ _ __   __ _ _ __  _ __ (_)_ __  (_) __ |___  | || |
--   | |/ _` | '_ \ / _` | '_ \| '_ \| | '_ \ | |/ _` | / /| || |_
--   | | (_| | |_) | (_| | | | | | | | | | | || | (_| |/ / |__   _|
--  _/ |\__,_| .__/ \__,_|_| |_|_| |_|_|_| |_|/ |\__,_/_/     |_|
-- |__/      |_|                            |__/
--
-- Neomake configuration

-- Set the neomake_c_cppcheck_maker variable to the desired value
vim.g.neomake_c_cppcheck_maker = {
  exec = 'cppcheck',
  args = {
    '--language=c',
    '--enable=warning,style,performance,portability,information,missingInclude',
    '--std=c99',
    '--inline-suppr',
    '--suppress=missingIncludeSystem'
  },
  errorformat = '%f:%l:%c: %t%*[^:]: %m'
}
