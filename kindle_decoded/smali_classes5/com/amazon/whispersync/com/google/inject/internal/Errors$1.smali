.class Lcom/amazon/whispersync/com/google/inject/internal/Errors$1;
.super Ljava/lang/Object;
.source "Errors.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/com/google/inject/internal/Errors;->getMessages()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/whispersync/com/google/inject/spi/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/com/google/inject/internal/Errors;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V
    .locals 0

    .line 534
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/Errors$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/whispersync/com/google/inject/spi/Message;Lcom/amazon/whispersync/com/google/inject/spi/Message;)I
    .locals 0

    .line 536
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/spi/Message;->getSource()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/whispersync/com/google/inject/spi/Message;->getSource()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 534
    check-cast p1, Lcom/amazon/whispersync/com/google/inject/spi/Message;

    check-cast p2, Lcom/amazon/whispersync/com/google/inject/spi/Message;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/Errors$1;->compare(Lcom/amazon/whispersync/com/google/inject/spi/Message;Lcom/amazon/whispersync/com/google/inject/spi/Message;)I

    move-result p1

    return p1
.end method
