.class public final Lcom/amazon/whispersync/communication/TCommMetrics;
.super Lcom/amazon/whispersync/communication/TCommMetricsBase;
.source "TCommMetrics.java"


# static fields
.field public static final COUNT_ACQUIRE_PROTOCOL_SOCKETS_NEW:Ljava/lang/String; = "CountAcquireProtocolSocketsNew"

.field public static final COUNT_ACQUIRE_PROTOCOL_SOCKETS_REUSED:Ljava/lang/String; = "CountAcquireProtocolSocketsReused"

.field public static final COUNT_ACQUIRE_PROTOCOL_SOCKETS_THROUGH_GATEWAY:Ljava/lang/String; = "CountAcquireProtocolSocketsThroughGateway"

.field public static final COUNT_ACQUIRE_PROTOCOL_SOCKETS_TOTAL:Ljava/lang/String; = "CountAcquireProtocolSocketsTotal"

.field public static final COUNT_BYTES_DECRYPTED:Ljava/lang/String; = "CountBytesDecrypted"

.field public static final COUNT_BYTES_ENCRYPTED:Ljava/lang/String; = "CountBytesEncrypted"

.field public static final COUNT_CHAIN_HANDLED_ON_LARGE_MESSAGE:Ljava/lang/String; = "CountChainHandledOnLargeMessage"

.field public static final COUNT_CHAIN_HANDLED_ON_SIMPLE_MESSAGE:Ljava/lang/String; = "CountChainHandledOnSimpleMessage"

.field public static final COUNT_CHAIN_HANDLED_ON_TUNING_MESSAGE:Ljava/lang/String; = "CountChainHandledOnTuningMessage"

.field public static final COUNT_CHAIN_REJECTED_ON_LARGE_MESSAGE:Ljava/lang/String; = "CountChainRejectedOnLargeMessage"

.field public static final COUNT_CHAIN_REJECTED_ON_SIMPLE_MESSAGE:Ljava/lang/String; = "CountChainRejectedOnSimpleMessage"

.field public static final COUNT_CLOSE_SOCKET_CHANNEL_CODE:Ljava/lang/String; = "CountCloseSocketChannelCode"

.field public static final COUNT_CLOSE_SOCKET_CHANNEL_REASON:Ljava/lang/String; = "CountCloseSocketChannelReason"

.field public static final COUNT_COMPRESSED_BYTES:Ljava/lang/String; = "CountCompressedBytes"

.field public static final COUNT_CONNECTING_SOCKET_CLOSE_NORMAL:Ljava/lang/String; = "CountConnectingSocketCloseNormal"

.field public static final COUNT_CONNECTING_SOCKET_UNEXPECTED_CLOSE:Ljava/lang/String; = "CountConnectingSocketUnexpectedClose"

.field public static final COUNT_CONNECTIVITY:Ljava/lang/String; = "CountConnectivity"

.field public static final COUNT_DEVICE_WOKEN_UP_FOR_HEARTBEATS:Ljava/lang/String; = "CountDeviceWakeupsForHeartbeat"

.field public static final COUNT_DIRECTBIDISOCKET_CONNECTION_ESTABLISHED:Ljava/lang/String; = "CountDirectBidiSocketConnectionEstablished"

.field public static final COUNT_DIRECT_BI_DI_SOCKET_CONNECTION_RESET:Ljava/lang/String; = "CountDirectBiDiSocketConnectionReset"

.field public static final COUNT_DIRECT_BI_DI_SOCKET_USED:Ljava/lang/String; = "CountDirectBiDiSocketUsed"

.field public static final COUNT_ENCODE_MESSAGE:Ljava/lang/String; = "CountEncodeMessage"

.field public static final COUNT_ENCODE_TUNING_MESSAGE:Ljava/lang/String; = "CountEncodeTuningMessage"

.field public static final COUNT_ENDPOINT_RESOLUTIONS_FAILURE:Ljava/lang/String; = "CountEndpointResolutionsFailure"

.field public static final COUNT_ENDPOINT_RESOLUTIONS_SUCCESS:Ljava/lang/String; = "CountEndpointResolutionsSuccess"

.field public static final COUNT_ENDPOINT_RESOLUTIONS_TOTAL:Ljava/lang/String; = "CountEndpointResolutionsTotal"

.field public static final COUNT_ESTABLISHED_SOCKET_CLOSE_NORMAL:Ljava/lang/String; = "CountEstablishedSocketCloseNormal"

.field public static final COUNT_ESTABLISHED_SOCKET_UNEXPECTED_CLOSE:Ljava/lang/String; = "CountEstablishedSocketUnexpectedClose"

.field public static final COUNT_ESTABLISH_NEW_CONNECTION_SUCCESS:Ljava/lang/String; = "CountEstablishNewConnectionSuccess"

.field public static final COUNT_ESTABLISH_NEW_CONNECTION_TIMEOUT:Ljava/lang/String; = "CountEstablishNewConnectionTimeout"

.field public static final COUNT_ESTABLISH_NEW_CONNECTION_TOTAL:Ljava/lang/String; = "CountEstablishNewConnectionTotal"

.field public static final COUNT_HEARTBEATS_NOT_SENT_IN_TIME:Ljava/lang/String; = "CountHeartbeatsNotSentInTime"

.field public static final COUNT_HEARTBEATS_NO_RESPONSE_RECEIVED:Ljava/lang/String; = "CountHeartbeatsNoResponseReceived"

.field public static final COUNT_HEARTBEATS_SCHEDULED_GAVE_UP:Ljava/lang/String; = "CountHeartbeatsScheduledGaveUp"

.field public static final COUNT_HEARTBEATS_SCHEDULED_UNHANDLED_EXCEPTION:Ljava/lang/String; = "CountHeartbeatsScheduledUnhandledException"

.field public static final COUNT_HEARTBEATS_SENT_SUCCESS:Ljava/lang/String; = "CountHeartbeatsSentSuccess"

.field public static final COUNT_HEARTBEATS_SENT_TOTAL:Ljava/lang/String; = "CountHeartbeatsSentTotal"

.field public static final COUNT_HEARTBEATS_SENT_UNHANDLED_EXCEPTION:Ljava/lang/String; = "CountHeartbeatsSentUnhandledException"

.field public static final COUNT_HEARTBEATS_STALE_CHECKS_NO_MATCHING_SOCKET:Ljava/lang/String; = "CountHeartbeatsStaleChecksNoMatchingSocket"

.field public static final COUNT_HEARTBEATS_STALE_CHECKS_TOTAL:Ljava/lang/String; = "CountHeartbeatsStaleChecksTotal"

.field public static final COUNT_MESSAGE_DROPPED_NO_LISTENER:Ljava/lang/String; = "CountMessageDroppedNoListener"

.field public static final COUNT_NO_CONNECTIVITY:Ljava/lang/String; = "CountNoConnectivity"

.field public static final COUNT_NUMBER_MESSAGES_DROPPED:Ljava/lang/String; = "CountNumberMessagesDropped"

.field public static final COUNT_ON_BYTE_BUFFER_CHAIN_QUEUED_USED:Ljava/lang/String; = "CountOnByteBufferChainQueuedUsed"

.field public static final COUNT_ON_BYTE_BUFFER_CHAIN_WEB_SOCKET_CLIENT_USED:Ljava/lang/String; = "CountOnByteBufferChainWebSocketClientUsed"

.field public static final COUNT_PAYLOAD_SIZE_LARGE:Ljava/lang/String; = "CountPayloadSizeLarge"

.field public static final COUNT_PAYLOAD_SIZE_SMALL:Ljava/lang/String; = "CountPayloadSizeSmall"

.field public static final COUNT_PAYLOAD_SIZE_UNKNOWN:Ljava/lang/String; = "CountPayloadSizeUnknown"

.field public static final COUNT_RAWHTTPSOCKET_CLOSED:Ljava/lang/String; = "CountRawHttpSocketClosed"

.field public static final COUNT_RAWHTTPSOCKET_CONNECTION_ESTABLISHED:Ljava/lang/String; = "CountRawHttpSocketConnectionEstablished"

.field public static final COUNT_RAW_HTTP_SOCKET_USED:Ljava/lang/String; = "CountRawHttpSocketUsed"

.field public static final COUNT_RESUBMIT_SIMPLE_MESSAGE:Ljava/lang/String; = "CountResubmitSimpleMessage"

.field public static final COUNT_RESUBMIT_SIMPLE_MESSAGE_FAILED:Ljava/lang/String; = "CountResubmitSimpleMessageFailed"

.field public static final COUNT_RETRANSMIT_FRAGMENT:Ljava/lang/String; = "CountRetransmitFragment"

.field public static final COUNT_SEND_MESSAGE_DATAPOINTS:Ljava/lang/String; = "CountSendMessageDataPoints"

.field public static final COUNT_SEND_MESSAGE_SERVICE_SIDE_FAILURE:Ljava/lang/String; = "CountSendMessageServiceSideFailure"

.field public static final COUNT_SEND_MESSAGE_SERVICE_SIDE_SUCCESS:Ljava/lang/String; = "CountSendMessageServiceSideSuccess"

.field public static final COUNT_SEND_MESSAGE_SERVICE_SIDE_TOTAL:Ljava/lang/String; = "CountSendMessageServiceSideTotal"

.field public static final COUNT_SEND_REQUEST_DATAPOINTS:Ljava/lang/String; = "CountSendRequestDataPoints"

.field public static final COUNT_SEND_REQUEST_SERVICE_SIDE_FAILURE:Ljava/lang/String; = "CountSendRequestServiceSideFailure"

.field public static final COUNT_SEND_REQUEST_SERVICE_SIDE_SUCCESS:Ljava/lang/String; = "CountSendRequestServiceSideSuccess"

.field public static final COUNT_SEND_REQUEST_SERVICE_SIDE_TOTAL:Ljava/lang/String; = "CountSendRequestServiceSideTotal"

.field public static final COUNT_SIMPLE_MESSAGE_SIZE_IS_ZERO:Ljava/lang/String; = "CountSimpleMessageSizeIsZero"

.field public static final COUNT_SIZE_MESSAGE_QUEUE:Ljava/lang/String; = "CountSizeMessageQueue"

.field public static final COUNT_SIZE_PAYLOAD:Ljava/lang/String; = "CountSizePayload"

.field public static final COUNT_SOCKET_ON_CLOSED_CODE:Ljava/lang/String; = "CountSocketOnClosedCode"

.field public static final COUNT_SOCKET_ON_CLOSED_REASON:Ljava/lang/String; = "CountSocketOnClosedReason"

.field public static final COUNT_SOCKET_RELEASED_BUT_REUSED:Ljava/lang/String; = "CountSocketReleasedButReused"

.field public static final COUNT_SOCKET_RELEASED_TOTAL:Ljava/lang/String; = "CountSocketReleasedTotal"

.field public static final COUNT_SRR_SERVICE_SIDE_FAILURE:Ljava/lang/String; = "CountSrrServiceSideFailure"

.field public static final COUNT_SRR_SERVICE_SIDE_SUCCESS:Ljava/lang/String; = "CountSrrServiceSideSuccess"

.field public static final COUNT_SRR_SERVICE_SIDE_TOTAL:Ljava/lang/String; = "CountSrrServiceSideTotal"

.field public static final COUNT_SWITCHED_TO_LEARNING_MODE:Ljava/lang/String; = "CountSwitchedToLearningMode"

.field public static final COUNT_TIMES_MESSAGES_DROPPED:Ljava/lang/String; = "CountTimesMessagesDropped"

.field public static final COUNT_TIMES_MESSAGE_QUEUE_FULL:Ljava/lang/String; = "CountMessageQueueFull"

.field public static final COUNT_TOTAL_RX_ACCOUNTED_BYTES:Ljava/lang/String; = "CountTotalRxAccountedBytes"

.field public static final COUNT_TOTAL_RX_BYTES:Ljava/lang/String; = "CountTotalRxBytes"

.field public static final COUNT_TOTAL_RX_REJECTED_BYTES:Ljava/lang/String; = "CountTotalRxRejectedBytes"

.field public static final COUNT_TOTAL_RX_UNACCOUNTED_BYTES:Ljava/lang/String; = "CountTotalRxUnaccountedBytes"

.field public static final COUNT_TOTAL_TX_ACCOUNTED_BYTES:Ljava/lang/String; = "CountTotalTxAccountedBytes"

.field public static final COUNT_TOTAL_TX_ACCOUNTED_BYTES_RAW_HTTP_SOCKET:Ljava/lang/String; = "CountTotalTxAccountedBytesRawHttpSocket"

.field public static final COUNT_TOTAL_TX_BYTES:Ljava/lang/String; = "CountTotalTxBytes"

.field public static final COUNT_TOTAL_TX_MISACCOUNTED_BYTES_RAW_HTTP_SOCKET:Ljava/lang/String; = "CountTotalTxMisaccountedBytesRawHttpSocket"

.field public static final COUNT_TOTAL_TX_REJECTED_BYTES:Ljava/lang/String; = "CountTotalTxRejectedBytes"

.field public static final COUNT_TRANSMIT_FRAGMENT:Ljava/lang/String; = "CountTransmitFragment"

.field public static final COUNT_UITHREAD_INVOCATION:Ljava/lang/String; = "CountUIThreadInvocation"

.field public static final COUNT_UNCOMPRESSED_BYTES:Ljava/lang/String; = "CountUncompressedBytes"

.field public static final COUNT_WATCHDOG_ACQUIRE_SOCKET_FAILURE:Ljava/lang/String; = "CountWatchdogAcquireSocketFailure"

.field public static final COUNT_WATCHDOG_ACQUIRE_SOCKET_INTERFACE:Ljava/lang/String; = "CountWatchdogAcquireSocketInterface"

.field public static final COUNT_WATCHDOG_ACQUIRE_SOCKET_REASON:Ljava/lang/String; = "CountWatchdogAcquireSocketReason"

.field public static final COUNT_WATCHDOG_ACQUIRE_SOCKET_SUCCESSFUL:Ljava/lang/String; = "CountWatchdogAcquireSocketSuccessful"

.field public static final COUNT_WATCHDOG_ACQUIRE_UNHANDLED_EXCEPTION:Ljava/lang/String; = "CountWatchdogAcquireUnhandledException"

.field private static final ETHERNET:Ljava/lang/String; = "Lan"

.field public static final IDENTITY_ENDPOINT_RESOLUTIONS_FAILURE:Ljava/lang/String; = "IdentityEndpointResolutionsFailure"

.field public static final PROGRAM_ID:Ljava/lang/String; = "TCommServer"

.field private static final SIM:Ljava/lang/String; = "Sim"

.field public static final TIME_ACQUIRE_CONNECTED_CONNECTION:Ljava/lang/String; = "TimeAcquireConnectedConnection"

.field public static final TIME_ACQUIRE_CONNECTION:Ljava/lang/String; = "TimeAcquireConnection"

.field public static final TIME_BYTE_BUFFER_CHAIN_MESSAGE_QUEUE:Ljava/lang/String; = "TimeByteBufferChainWorkerQueue"

.field public static final TIME_COMPUTE_CHECKSUM:Ljava/lang/String; = "TimeComputeChecksum"

.field public static final TIME_CONNECTIVITY_DURATION:Ljava/lang/String; = "TimeConnectivityDuration"

.field public static final TIME_CONVERT_MESSAGE_TO_REQUEST:Ljava/lang/String; = "TimeConvertMessageToRequest"

.field public static final TIME_CONVERT_RESPONSE_TO_MESSAGE:Ljava/lang/String; = "TimeConvertResponseToMessage"

.field public static final TIME_DECRYPT_DATA:Ljava/lang/String; = "TimeDecryptData"

.field public static final TIME_DO_SSL_HANDSHAKE:Ljava/lang/String; = "TimeDoSslHandshake"

.field public static final TIME_ENCODE_MESSAGE:Ljava/lang/String; = "TimeEncodeMessage"

.field public static final TIME_ENCRYPT_DATA:Ljava/lang/String; = "TimeEncryptData"

.field public static final TIME_ESTABLISH_NEW_CONNECTION:Ljava/lang/String; = "TimeEstablishNewConnection"

.field public static final TIME_ESTABLISH_SOCKET_CHANNEL:Ljava/lang/String; = "TimeEstablishSocketChannel"

.field public static final TIME_ESTABLISH_SSL_SOCKET_CHANNEL:Ljava/lang/String; = "TimeEstablishSslSocketChannel"

.field public static final TIME_ESTABLISH_UNDERLYING_SOCKET_CHANNEL_BEFORE_SSL:Ljava/lang/String; = "TimeEstablishUnderlyingSocketChannelBeforeSsl"

.field public static final TIME_HEARTBEAT_INTERVAL:Ljava/lang/String; = "TimeHeartbeatInterval"

.field public static final TIME_LEARNT_HEARTBEAT_INTERVAL:Ljava/lang/String; = "TimeLearntHeartbeatInterval"

.field public static final TIME_NETWORK_CONNECTED_BUT_NO_ALWAYS_ON_SOCKET:Ljava/lang/String; = "TimeNetworkConnectedButNoAlwaysOnSocket"

.field public static final TIME_NO_CONNECTIVITY_DURATION:Ljava/lang/String; = "TimeNoConnectivityDuration"

.field public static final TIME_RAW_HTTP_SOCKET_WORKER_QUEUE:Ljava/lang/String; = "TimeRawHttpSocketWorkerQueue"

.field public static final TIME_RESPONSE_ON_RAW_HTTP_SOCKET:Ljava/lang/String; = "TimeResponseOnRawHttpSocket"

.field public static final TIME_SEND_MESSAGE:Ljava/lang/String; = "TimeSendMessage"

.field public static final TIME_SEND_MESSAGE_SERVICE_SIDE:Ljava/lang/String; = "TimeSendMessageServiceSide"

.field public static final TIME_SEND_ON_BYTE_BUFFER_CHAIN:Ljava/lang/String; = "TimeSendOnByteBufferChain"

.field public static final TIME_SEND_REQUEST:Ljava/lang/String; = "TimeSendRequest"

.field public static final TIME_SEND_REQUEST_SERVICE_SIDE:Ljava/lang/String; = "TimeSendRequestServiceSide"

.field public static final TIME_SIGN_REQUEST:Ljava/lang/String; = "TimeSignRequest"

.field public static final TIME_SRR_SERVICE_SIDE:Ljava/lang/String; = "TimeSrrServiceSide"

.field public static final TIME_TUNING:Ljava/lang/String; = "TimeTuning"

.field public static final TIME_TUNING_SSL:Ljava/lang/String; = "TimeTuningSsl"

.field public static final TIME_UPGRADE_TO_WEBSOCKET:Ljava/lang/String; = "TimeUpgradeToWebsocket"

.field public static final TIME_UPGRADE_TO_WEBSOCKET_SSL:Ljava/lang/String; = "TimeUpgradeToWebsocketSsl"

.field public static final TIME_WATCHDOG_ACQUIRE_SOCKET_INSECURE:Ljava/lang/String; = "TimeWatchdogAcquireSocketInsecure"

.field public static final TIME_WATCHDOG_ACQUIRE_SOCKET_SECURE:Ljava/lang/String; = "TimeWatchdogAcquireSocketSecure"

.field public static final TIME_WATCHDOG_CONNECTION_DURATION:Ljava/lang/String; = "TimeWatchdogConnectionDuration"

.field private static final TOWER:Ljava/lang/String; = "Tower"

.field private static final WAN:Ljava/lang/String; = "Wan"

.field private static final WIFI:Ljava/lang/String; = "Wifi"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/amazon/whispersync/communication/TCommMetricsBase;-><init>()V

    return-void
.end method

.method public static suffixEthernet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Lan"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static suffixWan(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Wan"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static suffixWanAndSim(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Wan"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Sim"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static suffixWanAndTower(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Wan"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Tower"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static suffixWifi(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Wifi"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
