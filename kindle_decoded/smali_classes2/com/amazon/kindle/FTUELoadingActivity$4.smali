.class synthetic Lcom/amazon/kindle/FTUELoadingActivity$4;
.super Ljava/lang/Object;
.source "FTUELoadingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/FTUELoadingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kcp$store$IWebStoreController$StoreCredentialStatus:[I

.field static final synthetic $SwitchMap$com$amazon$kcp$store$WebStoreCredentialEvent$EventType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 113
    invoke-static {}, Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;->values()[Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/FTUELoadingActivity$4;->$SwitchMap$com$amazon$kcp$store$WebStoreCredentialEvent$EventType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;->UPDATED:Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :catch_0
    invoke-static {}, Lcom/amazon/kcp/store/IWebStoreController$StoreCredentialStatus;->values()[Lcom/amazon/kcp/store/IWebStoreController$StoreCredentialStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/FTUELoadingActivity$4;->$SwitchMap$com$amazon$kcp$store$IWebStoreController$StoreCredentialStatus:[I

    :try_start_1
    sget-object v2, Lcom/amazon/kcp/store/IWebStoreController$StoreCredentialStatus;->UPDATED:Lcom/amazon/kcp/store/IWebStoreController$StoreCredentialStatus;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/amazon/kindle/FTUELoadingActivity$4;->$SwitchMap$com$amazon$kcp$store$IWebStoreController$StoreCredentialStatus:[I

    sget-object v1, Lcom/amazon/kcp/store/IWebStoreController$StoreCredentialStatus;->FAILED:Lcom/amazon/kcp/store/IWebStoreController$StoreCredentialStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
