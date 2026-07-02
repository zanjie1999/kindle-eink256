.class Lcom/amazon/foundation/internal/EventProvider$1;
.super Ljava/lang/Object;
.source "EventProvider.java"

# interfaces
.implements Lcom/amazon/foundation/CallbackManager$ICallbackExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/foundation/internal/EventProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/foundation/internal/EventProvider;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p1, Lcom/amazon/foundation/ICallback;

    invoke-interface {p1}, Lcom/amazon/foundation/ICallback;->execute()V

    return-void
.end method
