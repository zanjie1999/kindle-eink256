.class Lcom/amazon/kindle/RevokeOwnershipResumer$1;
.super Ljava/util/TimerTask;
.source "RevokeOwnershipResumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/RevokeOwnershipResumer;->persistRevokeRequest(Lcom/amazon/kindle/revoke/IRevokeTracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/RevokeOwnershipResumer;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/RevokeOwnershipResumer;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/amazon/kindle/RevokeOwnershipResumer$1;->this$0:Lcom/amazon/kindle/RevokeOwnershipResumer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/amazon/kindle/RevokeOwnershipResumer$1;->this$0:Lcom/amazon/kindle/RevokeOwnershipResumer;

    sget-object v1, Lcom/amazon/kindle/revoke/RevokeFailureType;->OTHER:Lcom/amazon/kindle/revoke/RevokeFailureType;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/RevokeOwnershipResumer;->resumeRevokeRequests(Lcom/amazon/kindle/revoke/RevokeFailureType;)V

    return-void
.end method
