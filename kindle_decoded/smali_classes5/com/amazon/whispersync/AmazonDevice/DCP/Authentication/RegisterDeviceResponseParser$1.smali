.class synthetic Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponseParser$1;
.super Ljava/lang/Object;
.source "RegisterDeviceResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponseParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$AmazonDevice$Common$FIRSErrorType:[I

.field static final synthetic $SwitchMap$com$AmazonDevice$Common$KindleWebserviceErrorType:[I

.field static final synthetic $SwitchMap$com$AmazonDevice$DCP$Authentication$RegisterDeviceErrorType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 210
    invoke-static {}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;->values()[Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponseParser$1;->$SwitchMap$com$AmazonDevice$DCP$Authentication$RegisterDeviceErrorType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;->RegisterDeviceErrorTypeCustomerNotFound:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponseParser$1;->$SwitchMap$com$AmazonDevice$DCP$Authentication$RegisterDeviceErrorType:[I

    sget-object v3, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;->RegisterDeviceErrorTypeDeviceAlreadyRegistered:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponseParser$1;->$SwitchMap$com$AmazonDevice$DCP$Authentication$RegisterDeviceErrorType:[I

    sget-object v4, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;->RegisterDeviceErrorTypeDuplicateDeviceName:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v3, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponseParser$1;->$SwitchMap$com$AmazonDevice$DCP$Authentication$RegisterDeviceErrorType:[I

    sget-object v4, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;->RegisterDeviceErrorTypeUnrecognized:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 197
    :catch_3
    invoke-static {}, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;->values()[Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponseParser$1;->$SwitchMap$com$AmazonDevice$Common$KindleWebserviceErrorType:[I

    :try_start_4
    sget-object v4, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;->KindleWebserviceErrorTypeDeviceAlreadyRegistered:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponseParser$1;->$SwitchMap$com$AmazonDevice$Common$KindleWebserviceErrorType:[I

    sget-object v4, Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;->KindleWebserviceErrorTypeDuplicateDeviceName:Lcom/amazon/whispersync/AmazonDevice/Common/KindleWebserviceErrorType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 182
    :catch_5
    invoke-static {}, Lcom/amazon/whispersync/AmazonDevice/Common/FIRSErrorType;->values()[Lcom/amazon/whispersync/AmazonDevice/Common/FIRSErrorType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponseParser$1;->$SwitchMap$com$AmazonDevice$Common$FIRSErrorType:[I

    :try_start_6
    sget-object v4, Lcom/amazon/whispersync/AmazonDevice/Common/FIRSErrorType;->FIRSErrorTypeCustomerNotFound:Lcom/amazon/whispersync/AmazonDevice/Common/FIRSErrorType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponseParser$1;->$SwitchMap$com$AmazonDevice$Common$FIRSErrorType:[I

    sget-object v3, Lcom/amazon/whispersync/AmazonDevice/Common/FIRSErrorType;->FIRSErrorTypeDeviceAlreadyRegistered:Lcom/amazon/whispersync/AmazonDevice/Common/FIRSErrorType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceResponseParser$1;->$SwitchMap$com$AmazonDevice$Common$FIRSErrorType:[I

    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/FIRSErrorType;->FIRSErrorTypeDuplicateAccountName:Lcom/amazon/whispersync/AmazonDevice/Common/FIRSErrorType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    return-void
.end method
