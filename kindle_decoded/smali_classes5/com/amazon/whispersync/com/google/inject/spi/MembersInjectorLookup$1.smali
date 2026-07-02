.class Lcom/amazon/whispersync/com/google/inject/spi/MembersInjectorLookup$1;
.super Ljava/lang/Object;
.source "MembersInjectorLookup.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/com/google/inject/spi/MembersInjectorLookup;->getMembersInjector()Lcom/amazon/whispersync/com/google/inject/MembersInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/MembersInjector<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/com/google/inject/spi/MembersInjectorLookup;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/spi/MembersInjectorLookup;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/spi/MembersInjectorLookup$1;->this$0:Lcom/amazon/whispersync/com/google/inject/spi/MembersInjectorLookup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public injectMembers(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/MembersInjectorLookup$1;->this$0:Lcom/amazon/whispersync/com/google/inject/spi/MembersInjectorLookup;

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/spi/MembersInjectorLookup;->access$000(Lcom/amazon/whispersync/com/google/inject/spi/MembersInjectorLookup;)Lcom/amazon/whispersync/com/google/inject/MembersInjector;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "This MembersInjector cannot be used until the Injector has been created."

    invoke-static {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/MembersInjectorLookup$1;->this$0:Lcom/amazon/whispersync/com/google/inject/spi/MembersInjectorLookup;

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/spi/MembersInjectorLookup;->access$000(Lcom/amazon/whispersync/com/google/inject/spi/MembersInjectorLookup;)Lcom/amazon/whispersync/com/google/inject/MembersInjector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MembersInjector<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/spi/MembersInjectorLookup$1;->this$0:Lcom/amazon/whispersync/com/google/inject/spi/MembersInjectorLookup;

    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/spi/MembersInjectorLookup;->access$100(Lcom/amazon/whispersync/com/google/inject/spi/MembersInjectorLookup;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
