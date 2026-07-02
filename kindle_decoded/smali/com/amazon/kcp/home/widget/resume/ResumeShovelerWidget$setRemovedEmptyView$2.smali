.class final Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget$setRemovedEmptyView$2;
.super Ljava/lang/Object;
.source "BaseResumeWidgetProvider.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->setRemovedEmptyView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget$setRemovedEmptyView$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget$setRemovedEmptyView$2;

    invoke-direct {v0}, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget$setRemovedEmptyView$2;-><init>()V

    sput-object v0, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget$setRemovedEmptyView$2;->INSTANCE:Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget$setRemovedEmptyView$2;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 154
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    const-string v0, "Utils.getFactory()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryView;->ALL_ITEMS:Lcom/amazon/kindle/krx/library/LibraryView;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->launchLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;)V

    :cond_0
    return-void
.end method
