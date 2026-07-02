.class Lcom/amazon/kcp/reader/ui/ReaderViewOptions$5;
.super Ljava/lang/Object;
.source "ReaderViewOptions.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->addSectionLayoutOptions(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ReaderViewOptions;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderViewOptions;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions$5;->this$0:Lcom/amazon/kcp/reader/ui/ReaderViewOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 475
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    if-eqz p2, :cond_0

    sget-object p2, Lcom/amazon/android/docviewer/SectionLayoutMode;->SCALE_TO_WIDTH:Lcom/amazon/android/docviewer/SectionLayoutMode;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/amazon/android/docviewer/SectionLayoutMode;->NORMAL:Lcom/amazon/android/docviewer/SectionLayoutMode;

    :goto_0
    invoke-virtual {p1, p2}, Lcom/amazon/kcp/application/UserSettingsController;->setSectionLayoutMode(Lcom/amazon/android/docviewer/SectionLayoutMode;)V

    return-void
.end method
