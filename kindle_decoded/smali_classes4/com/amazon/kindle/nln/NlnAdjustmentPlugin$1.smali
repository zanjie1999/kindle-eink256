.class Lcom/amazon/kindle/nln/NlnAdjustmentPlugin$1;
.super Ljava/lang/Object;
.source "NlnAdjustmentPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/IProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/IProvider<",
        "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin$1;->this$0:Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ")",
            "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object p1, p0, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin$1;->this$0:Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;

    invoke-static {p1}, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->access$000(Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 100
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin$1;->get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;

    move-result-object p1

    return-object p1
.end method
