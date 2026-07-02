.class Lcom/amazon/foundation/internal/ObjectEventProvider$1;
.super Ljava/lang/Object;
.source "ObjectEventProvider.java"

# interfaces
.implements Lcom/amazon/foundation/CallbackManager$ICallbackExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/foundation/internal/ObjectEventProvider;->notifyListeners(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/amazon/foundation/internal/ObjectEventProvider;Ljava/lang/Object;)V
    .locals 0

    .line 38
    iput-object p2, p0, Lcom/amazon/foundation/internal/ObjectEventProvider$1;->val$object:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeCallback(Ljava/lang/Object;)V
    .locals 1

    .line 42
    check-cast p1, Lcom/amazon/foundation/internal/IObjectCallback;

    iget-object v0, p0, Lcom/amazon/foundation/internal/ObjectEventProvider$1;->val$object:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/amazon/foundation/internal/IObjectCallback;->execute(Ljava/lang/Object;)V

    return-void
.end method
