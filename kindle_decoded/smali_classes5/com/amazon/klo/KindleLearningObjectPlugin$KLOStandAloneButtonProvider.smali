.class public Lcom/amazon/klo/KindleLearningObjectPlugin$KLOStandAloneButtonProvider;
.super Ljava/lang/Object;
.source "KindleLearningObjectPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/IProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/klo/KindleLearningObjectPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KLOStandAloneButtonProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/IProvider<",
        "Lcom/amazon/kindle/krx/ui/IActionButton<",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/klo/KindleLearningObjectPlugin;


# direct methods
.method public constructor <init>(Lcom/amazon/klo/KindleLearningObjectPlugin;)V
    .locals 0

    .line 524
    iput-object p1, p0, Lcom/amazon/klo/KindleLearningObjectPlugin$KLOStandAloneButtonProvider;->this$0:Lcom/amazon/klo/KindleLearningObjectPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/IActionButton;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ")",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 529
    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectPlugin$KLOStandAloneButtonProvider;->this$0:Lcom/amazon/klo/KindleLearningObjectPlugin;

    invoke-static {v0, p1}, Lcom/amazon/klo/KindleLearningObjectPlugin;->access$200(Lcom/amazon/klo/KindleLearningObjectPlugin;Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 534
    :cond_0
    iget-object p1, p0, Lcom/amazon/klo/KindleLearningObjectPlugin$KLOStandAloneButtonProvider;->this$0:Lcom/amazon/klo/KindleLearningObjectPlugin;

    invoke-static {p1}, Lcom/amazon/klo/KindleLearningObjectPlugin;->access$300(Lcom/amazon/klo/KindleLearningObjectPlugin;)Lcom/amazon/kindle/krx/ui/IActionButton;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 524
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/klo/KindleLearningObjectPlugin$KLOStandAloneButtonProvider;->get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/IActionButton;

    move-result-object p1

    return-object p1
.end method
