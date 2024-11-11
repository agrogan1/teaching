Some thoughts about power analysis.

```mermaid
%%{
  init: {
    'theme': 'base',
    'themeVariables': {
      'primaryColor': '#FFCB05',
      'primaryTextColor': '#000000',
      'primaryBorderColor': '#00274C',
      'lineColor': '#00274C',
      'secondaryColor': '#00274C',
      'secondaryTextColor': '#000000',
      'tertiaryColor': '#F2F2F2',
      'tertiaryBorderColor': '#00274C'
    }
  }
}%%

flowchart LR
  question(Do I need to do a power analysis?) --> secondary(I have LARGER secondary data.)
  secondary --> probablynot(Probably not.) 
  question --> intervention(I'm designing an intervention.)
  intervention --> enoughdata(I need to know if I will have enough data to detect the expected effects.)
  question --> smallsecondary(I have SMALLER secondary data)
  smallsecondary --> enoughdata
```

