.class public Lcom/amazon/android/widget/items/NoteWidgetItemProvider;
.super Ljava/lang/Object;
.source "NoteWidgetItemProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/IProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/widget/items/NoteWidgetItemProvider$NoteWidgetItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/IProvider<",
        "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
        "Lcom/amazon/kindle/krx/content/IContentSelection;",
        ">;",
        "Lcom/amazon/kindle/krx/content/IContentSelection;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/krx/content/IContentSelection;)Lcom/amazon/android/widget/items/NoteWidgetItemProvider$NoteWidgetItem;
    .locals 3

    .line 25
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    return-object v0

    .line 31
    :cond_1
    new-instance v0, Lcom/amazon/android/widget/items/NoteWidgetItemProvider$NoteWidgetItem;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/amazon/kindle/krl/R$integer;->widget_item_note:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/amazon/android/widget/items/NoteWidgetItemProvider$NoteWidgetItem;-><init>(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;I)V

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22
    check-cast p1, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/items/NoteWidgetItemProvider;->get(Lcom/amazon/kindle/krx/content/IContentSelection;)Lcom/amazon/android/widget/items/NoteWidgetItemProvider$NoteWidgetItem;

    move-result-object p1

    return-object p1
.end method
