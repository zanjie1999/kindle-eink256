.class Lcom/amazon/kcp/reader/ui/ReaderViewOptions$1;
.super Ljava/lang/Object;
.source "ReaderViewOptions.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ReaderViewOptions;->addKindleIllustratedOption(Landroid/view/ViewGroup;)V
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

    .line 352
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderViewOptions$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderViewOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 355
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/application/UserSettingsController;->setKindleIllustratedEnabled(Z)V

    return-void
.end method
