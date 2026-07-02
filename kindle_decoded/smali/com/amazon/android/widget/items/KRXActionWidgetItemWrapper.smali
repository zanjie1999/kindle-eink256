.class public Lcom/amazon/android/widget/items/KRXActionWidgetItemWrapper;
.super Lcom/amazon/android/widget/AbstractActionWidgetItem;
.source "KRXActionWidgetItemWrapper.kt"

# interfaces
.implements Lcom/amazon/android/widget/items/IPrioritizedWidgetItem;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KRXModel:",
        "Ljava/lang/Object;",
        "SortModel:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/android/widget/AbstractActionWidgetItem;",
        "Lcom/amazon/android/widget/items/IPrioritizedWidgetItem<",
        "TSortModel;>;"
    }
.end annotation


# instance fields
.field private final krxItem:Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
            "TKRXModel;>;"
        }
    .end annotation
.end field

.field private final krxModel:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TKRXModel;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
            "TKRXModel;>;TKRXModel;)V"
        }
    .end annotation

    const-string v0, "krxItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Lcom/amazon/android/widget/AbstractActionWidgetItem;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/widget/items/KRXActionWidgetItemWrapper;->krxItem:Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;

    iput-object p2, p0, Lcom/amazon/android/widget/items/KRXActionWidgetItemWrapper;->krxModel:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getButtonIdentifier()Ljava/lang/String;
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/amazon/android/widget/items/KRXActionWidgetItemWrapper;->krxItem:Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;->getButtonIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "krxItem.buttonIdentifier"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/android/widget/items/KRXActionWidgetItemWrapper;->krxItem:Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;->getId()I

    move-result v0

    return v0
.end method

.method public getImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/amazon/android/widget/items/KRXActionWidgetItemWrapper;->krxItem:Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;

    iget-object v1, p0, Lcom/amazon/android/widget/items/KRXActionWidgetItemWrapper;->krxModel:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;->getImage(Landroid/content/Context;Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSortModel;)I"
        }
    .end annotation

    .line 32
    iget-object p1, p0, Lcom/amazon/android/widget/items/KRXActionWidgetItemWrapper;->krxItem:Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;

    iget-object v0, p0, Lcom/amazon/android/widget/items/KRXActionWidgetItemWrapper;->krxModel:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;->getPriority(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getText(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/amazon/android/widget/items/KRXActionWidgetItemWrapper;->krxItem:Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;

    iget-object v1, p0, Lcom/amazon/android/widget/items/KRXActionWidgetItemWrapper;->krxModel:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;->getText(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "krxItem.getText(context, krxModel)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public isVisible(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSortModel;)Z"
        }
    .end annotation

    .line 36
    iget-object p1, p0, Lcom/amazon/android/widget/items/KRXActionWidgetItemWrapper;->krxItem:Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;

    iget-object v0, p0, Lcom/amazon/android/widget/items/KRXActionWidgetItemWrapper;->krxModel:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;->isVisible(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onClick(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/amazon/android/widget/items/KRXActionWidgetItemWrapper;->krxItem:Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;

    iget-object v1, p0, Lcom/amazon/android/widget/items/KRXActionWidgetItemWrapper;->krxModel:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;->onClick(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KRX Wrapped ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/android/widget/items/KRXActionWidgetItemWrapper;->krxItem:Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
