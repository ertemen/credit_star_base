{
  "TargetMetadata": {
    "ParallelApplyBufferSize": 1000,
    "ParallelApplyQueuesPerThread": 10,
    "ParallelApplyThreads": 16,
    "TargetSchema": "",
    "InlineLobMaxSize": 0,
    "ParallelLoadQueuesPerThread": 5,
    "SupportLobs": true,
    "LobChunkSize": 0,
    "TaskRecoveryTableEnabled": false,
    "ParallelLoadThreads": 16,
    "LobMaxSize": 32,
    "BatchApplyEnabled": false,
    "FullLobMode": false,
    "LimitedSizeLobMode": true,
    "LoadMaxFileSize": 0,
    "ParallelLoadBufferSize": 1000
  },
  "FullLoadSettings": {
    "TargetTablePrepMode": "DO_NOTHING",
    "CreatePkAfterFullLoad": false,
    "StopTaskCachedChangesApplied": false,
    "StopTaskCachedChangesNotApplied": false,
    "MaxFullLoadSubTasks": 4,
    "TransactionConsistencyTimeout": 600,
    "CommitRate": 5000
  },
  "Logging": {
    "EnableLogging": true,
    "LogComponents": [
      {
        "Id": "TRANSFORMATION",
        "Severity": "LOGGER_SEVERITY_DEFAULT"
      },
      {
        "Id": "SOURCE_UNLOAD",
        "Severity": "LOGGER_SEVERITY_DEFAULT"
      },
      {
        "Id": "IO",
        "Severity": "LOGGER_SEVERITY_DEFAULT"
      },
      {
        "Id": "TARGET_LOAD",
        "Severity": "LOGGER_SEVERITY_DEFAULT"
      },
      {
        "Id": "PERFORMANCE",
        "Severity": "LOGGER_SEVERITY_DEFAULT"
      },
      {
        "Id": "SOURCE_CAPTURE",
        "Severity": "LOGGER_SEVERITY_DEFAULT"
      },
      {
        "Id": "SORTER",
        "Severity": "LOGGER_SEVERITY_DEFAULT"
      },
      {
        "Id": "REST_SERVER",
        "Severity": "LOGGER_SEVERITY_DEFAULT"
      },
      {
        "Id": "VALIDATOR_EXT",
        "Severity": "LOGGER_SEVERITY_DEFAULT"
      },
      {
        "Id": "TARGET_APPLY",
        "Severity": "LOGGER_SEVERITY_DEFAULT"
      },
      {
        "Id": "TASK_MANAGER",
        "Severity": "LOGGER_SEVERITY_DEFAULT"
      },
      {
        "Id": "TABLES_MANAGER",
        "Severity": "LOGGER_SEVERITY_DEFAULT"
      },
      {
        "Id": "METADATA_MANAGER",
        "Severity": "LOGGER_SEVERITY_DEFAULT"
      },
      {
        "Id": "FILE_FACTORY",
        "Severity": "LOGGER_SEVERITY_DEFAULT"
      },
      {
        "Id": "COMMON",
        "Severity": "LOGGER_SEVERITY_DEFAULT"
      },
      {
        "Id": "ADDONS",
        "Severity": "LOGGER_SEVERITY_DEFAULT"
      },
      {
        "Id": "DATA_STRUCTURE",
        "Severity": "LOGGER_SEVERITY_DEFAULT"
      },
      {
        "Id": "COMMUNICATION",
        "Severity": "LOGGER_SEVERITY_DEFAULT"
      },
      {
        "Id": "FILE_TRANSFER",
        "Severity": "LOGGER_SEVERITY_DEFAULT"
      }
    ]
  },
  "ControlTablesSettings": {
    "ControlSchema": "",
    "HistoryTimeslotInMinutes": 5,
    "HistoryTableEnabled": false,
    "SuspendedTablesTableEnabled": false,
    "StatusTableEnabled": false,
    "FullLoadExceptionTableEnabled": false
  },
  "StreamBufferSettings": {
    "StreamBufferCount": 3,
    "StreamBufferSizeInMB": 8,
    "CtrlStreamBufferSizeInMB": 5
  },
  "ChangeProcessingDdlHandlingPolicy": {
    "HandleSourceTableDropped": true,
    "HandleSourceTableTruncated": true,
    "HandleSourceTableAltered": true
  },
  "ErrorBehavior": {
    "DataErrorPolicy": "LOG_ERROR",
    "DataTruncationErrorPolicy": "LOG_ERROR",
    "DataErrorEscalationPolicy": "SUSPEND_TABLE",
    "DataErrorEscalationCount": 0,
    "TableErrorPolicy": "SUSPEND_TABLE",
    "TableErrorEscalationPolicy": "STOP_TASK",
    "TableErrorEscalationCount": 0,
    "RecoverableErrorInterval": 5,
    "RecoverableErrorThrottling": true,
    "RecoverableErrorThrottlingMax": 1800,
    "RecoverableErrorStopRetryAfterThrottlingMax": true,
    "ApplyErrorDeletePolicy": "IGNORE_RECORD",
    "ApplyErrorInsertPolicy": "LOG_ERROR",
    "ApplyErrorUpdatePolicy": "LOG_ERROR",
    "ApplyErrorEscalationPolicy": "LOG_ERROR",
    "ApplyErrorEscalationCount": 0,
    "RecoverableErrorCount": -1,
    "ApplyErrorFailOnTruncationDdl": false,
    "FullLoadIgnoreConflicts": true,
    "FailOnTransactionConsistencyBreached": false,
    "FailOnNoTablesCaptured": true
  },
  "ChangeProcessingTuning": {
    "BatchApplyPreserveTransaction": true,
    "BatchApplyTimeoutMin": 1,
    "BatchApplyTimeoutMax": 30,
    "BatchApplyMemoryLimit": 500,
    "BatchSplitSize": 0,
    "MinTransactionSize": 1000,
    "CommitTimeout": 1,
    "MemoryLimitTotal": 1024,
    "MemoryKeepTime": 60,
    "StatementCacheSize": 50
  },
  "PostProcessingRules": null,
  "CharacterSetSettings": null,
  "LoopbackPreventionSettings": null,
  "BeforeImageSettings": null,
  "FailTaskWhenCleanTaskResourceFailed": false
}