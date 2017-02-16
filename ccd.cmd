:: 
:loop
@if "%1"=="" goto :EOF
@if exist "%1" (
    @cd "%1"
) else (
    @goto :try_with_star
)
@goto :shift

:try_with_star
@if exist "%1*" (
    @cd "%1*"
) else (
    @echo "%1*" doesn't exist. Quitting.
    @goto :EOF
)

:shift
@shift
@goto :loop
