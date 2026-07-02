.class synthetic Lcom/amazon/kcp/store/AbstractWebStoreController$3;
.super Ljava/lang/Object;
.source "AbstractWebStoreController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/AbstractWebStoreController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kcp$store$WebStoreCredentialEvent$EventType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 75
    invoke-static {}, Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;->values()[Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/store/AbstractWebStoreController$3;->$SwitchMap$com$amazon$kcp$store$WebStoreCredentialEvent$EventType:[I

    :try_start_0
    sget-object v1, Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;->UPDATED:Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/kcp/store/AbstractWebStoreController$3;->$SwitchMap$com$amazon$kcp$store$WebStoreCredentialEvent$EventType:[I

    sget-object v1, Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;->UPDATE_FAILED:Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
