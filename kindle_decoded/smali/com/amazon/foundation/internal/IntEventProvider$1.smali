.class Lcom/amazon/foundation/internal/IntEventProvider$1;
.super Ljava/lang/Object;
.source "IntEventProvider.java"

# interfaces
.implements Lcom/amazon/foundation/CallbackManager$ICallbackExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/amazon/foundation/internal/IntEventProvider;I)V
    .locals 0

    .line 44
    iput p2, p0, Lcom/amazon/foundation/internal/IntEventProvider$1;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeCallback(Ljava/lang/Object;)V
    .locals 1

    .line 46
    check-cast p1, Lcom/amazon/foundation/IIntCallback;

    iget v0, p0, Lcom/amazon/foundation/internal/IntEventProvider$1;->val$value:I

    invoke-interface {p1, v0}, Lcom/amazon/foundation/IIntCallback;->execute(I)V

    return-void
.end method
