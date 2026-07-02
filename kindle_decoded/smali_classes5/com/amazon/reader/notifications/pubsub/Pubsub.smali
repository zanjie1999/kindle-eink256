.class public Lcom/amazon/reader/notifications/pubsub/Pubsub;
.super Ljava/lang/Object;
.source "Pubsub.java"


# static fields
.field public static final APPLICATION_ARN:Ljava/lang/String; = "ApplicationArn"

.field public static final AUTH_ROLE_ARN:Ljava/lang/String; = "AuthRoleArn"

.field public static final AWS_ACCOUNT_ID:Ljava/lang/String; = "AwsAccountId"

.field public static final AWS_IDENTITY_POOL_ID:Ljava/lang/String; = "AwsIdentityPoolId"

.field public static final GETUI_REGISTRATION_TOPIC_ARN:Ljava/lang/String; = "GetuiRegistrationTopicArn"

.field public static final SNS_ENDPOINT:Ljava/lang/String; = "SnsEndpoint"

.field public static final UNAUTH_ROLE_ARN:Ljava/lang/String; = "UnAuthRoleArn"

.field private static config:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getStage(Landroid/content/Context;)Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;
    .locals 0

    .line 66
    invoke-static {p0}, Lcom/amazon/reader/notifications/debug/ReaderNotificationsDebugMenu;->isGammaEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 67
    sget-object p0, Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;->GAMMA:Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;

    return-object p0

    .line 69
    :cond_0
    sget-object p0, Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;->PROD:Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;

    return-object p0
.end method

.method public static getValue(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    const-string v0, ""

    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    sget-object v0, Lcom/amazon/reader/notifications/pubsub/Pubsub;->config:Ljava/util/Map;

    invoke-static {p1}, Lcom/amazon/reader/notifications/pubsub/Pubsub;->getStage(Landroid/content/Context;)Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 53
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 56
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find value for key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot get pubsub value with a null key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static initBetaConfig(Lcom/amazon/reader/notifications/pubsub/AndroidPlatformType;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/reader/notifications/pubsub/AndroidPlatformType;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 88
    sget-object v1, Lcom/amazon/reader/notifications/pubsub/AndroidPlatformType;->THIRD_PARTY:Lcom/amazon/reader/notifications/pubsub/AndroidPlatformType;

    invoke-virtual {p0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v1, "ApplicationArn"

    if-eqz p0, :cond_0

    const-string p0, "arn:aws:sns:us-west-2:801146178487:app/GCM/ReaderNotificationsFCM"

    .line 89
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "arn:aws:sns:us-west-2:801146178487:app/ADM/ReaderNotificationsADM"

    .line 91
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string p0, "AwsAccountId"

    const-string v1, "801146178487"

    .line 94
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "AwsIdentityPoolId"

    const-string/jumbo v1, "us-east-1:4f82b17c-2cbf-4c0f-858a-b97dfbe312d8"

    .line 95
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "UnAuthRoleArn"

    const-string v1, "arn:aws:iam::801146178487:role/Cognito_PushNotificationsPoolUnauth_DefaultRole"

    .line 96
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "AuthRoleArn"

    const-string v1, "arn:aws:iam::801146178487:role/Cognito_PushNotificationsPoolAuth_DefaultRole"

    .line 97
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "SnsEndpoint"

    const-string v1, "https://sns.us-west-2.amazonaws.com"

    .line 98
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "GetuiRegistrationTopicArn"

    const-string v1, "arn:aws:sns:us-west-2:801146178487:DeviceGetuiRegistered"

    .line 99
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static initConfig(Lcom/amazon/reader/notifications/pubsub/AndroidPlatformType;)V
    .locals 3

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 79
    sget-object v1, Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;->PROD:Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;

    invoke-static {p0}, Lcom/amazon/reader/notifications/pubsub/Pubsub;->initProdConfig(Lcom/amazon/reader/notifications/pubsub/AndroidPlatformType;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v1, Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;->GAMMA:Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;

    invoke-static {p0}, Lcom/amazon/reader/notifications/pubsub/Pubsub;->initGammaConfig(Lcom/amazon/reader/notifications/pubsub/AndroidPlatformType;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v1, Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;->BETA:Lcom/amazon/reader/notifications/pubsub/EnvironmentStage;

    invoke-static {p0}, Lcom/amazon/reader/notifications/pubsub/Pubsub;->initBetaConfig(Lcom/amazon/reader/notifications/pubsub/AndroidPlatformType;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sput-object v0, Lcom/amazon/reader/notifications/pubsub/Pubsub;->config:Ljava/util/Map;

    return-void
.end method

.method private static initGammaConfig(Lcom/amazon/reader/notifications/pubsub/AndroidPlatformType;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/reader/notifications/pubsub/AndroidPlatformType;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 106
    sget-object v1, Lcom/amazon/reader/notifications/pubsub/AndroidPlatformType;->THIRD_PARTY:Lcom/amazon/reader/notifications/pubsub/AndroidPlatformType;

    invoke-virtual {p0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v1, "ApplicationArn"

    if-eqz p0, :cond_0

    const-string p0, "arn:aws:sns:us-east-1:641602967177:app/GCM/ReaderNotificationsFCM"

    .line 107
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "arn:aws:sns:us-east-1:641602967177:app/ADM/ReaderNotificationsADM"

    .line 109
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string p0, "AwsAccountId"

    const-string v1, "641602967177"

    .line 111
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "AwsIdentityPoolId"

    const-string/jumbo v1, "us-east-1:b88f69b9-a338-4aa3-b17d-356987dd9e4d"

    .line 112
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "UnAuthRoleArn"

    const-string v1, "arn:aws:iam::641602967177:role/Cognito_PushNotificationsPoolUnauth_DefaultRole"

    .line 113
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "AuthRoleArn"

    const-string v1, "arn:aws:iam::641602967177:role/Cognito_PushNotificationsPoolAuth_DefaultRole"

    .line 114
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "SnsEndpoint"

    const-string v1, "https://sns.us-east-1.amazonaws.com"

    .line 115
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "GetuiRegistrationTopicArn"

    const-string v1, "arn:aws:sns:us-east-1:641602967177:DeviceGetuiRegistered"

    .line 116
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static initProdConfig(Lcom/amazon/reader/notifications/pubsub/AndroidPlatformType;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/reader/notifications/pubsub/AndroidPlatformType;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 124
    sget-object v1, Lcom/amazon/reader/notifications/pubsub/AndroidPlatformType;->THIRD_PARTY:Lcom/amazon/reader/notifications/pubsub/AndroidPlatformType;

    invoke-virtual {p0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v1, "ApplicationArn"

    if-eqz p0, :cond_0

    const-string p0, "arn:aws:sns:us-east-1:921586775002:app/GCM/ReaderNotificationsFCM"

    .line 125
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "arn:aws:sns:us-east-1:921586775002:app/ADM/ReaderNotificationsADM"

    .line 127
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string p0, "AwsAccountId"

    const-string v1, "921586775002"

    .line 129
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "AwsIdentityPoolId"

    const-string/jumbo v1, "us-east-1:6d4088e3-4cfc-4cf2-bb88-4722724f2a4d"

    .line 130
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "UnAuthRoleArn"

    const-string v1, "arn:aws:iam::921586775002:role/Cognito_PushNotificationsPoolUnauth_DefaultRole"

    .line 131
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "AuthRoleArn"

    const-string v1, "arn:aws:iam::921586775002:role/Cognito_PushNotificationsPoolAuth_DefaultRole"

    .line 132
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "SnsEndpoint"

    const-string v1, "https://sns.us-east-1.amazonaws.com"

    .line 133
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "GetuiRegistrationTopicArn"

    const-string v1, "arn:aws:sns:us-east-1:921586775002:DeviceGetuiRegistered"

    .line 134
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
