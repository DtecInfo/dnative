object IWServerController: TIWServerController
  OldCreateOrder = False
  AppName = 'WebCenter'
  Description = 'WebCenter - DNATIVE TECNOLOGIA'
  DisplayName = 'WebCenter'
  Port = 8881
  Version = '15.1.16'
  SessionOptions.SessionTimeout = 30
  SessionOptions.RestartExpiredSession = True
  OnNewSession = IWServerControllerBaseNewSession
  Height = 310
  Width = 342
end
