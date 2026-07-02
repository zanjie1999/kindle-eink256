.class synthetic Lcom/amazon/whispersync/dcp/framework/auth/LwaHelpers$1;
.super Ljava/lang/Object;
.source "LwaHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/auth/LwaHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$identity$auth$device$authorization$api$AuthzConstants$FUTURE_TYPE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 69
    invoke-static {}, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;->values()[Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/auth/LwaHelpers$1;->$SwitchMap$com$amazon$identity$auth$device$authorization$api$AuthzConstants$FUTURE_TYPE:[I

    :try_start_0
    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;->SUCCESS:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/auth/LwaHelpers$1;->$SwitchMap$com$amazon$identity$auth$device$authorization$api$AuthzConstants$FUTURE_TYPE:[I

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;->ERROR:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
