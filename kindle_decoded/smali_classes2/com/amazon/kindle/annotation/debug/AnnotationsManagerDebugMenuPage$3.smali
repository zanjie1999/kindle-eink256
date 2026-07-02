.class Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage$3;
.super Ljava/lang/Object;
.source "AnnotationsManagerDebugMenuPage.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage;->getView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage$3;->this$0:Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 71
    iget-object p1, p0, Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage$3;->this$0:Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage;

    invoke-static {p1}, Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage;->access$100(Lcom/amazon/kindle/annotation/debug/AnnotationsManagerDebugMenuPage;)Lcom/amazon/kcp/application/IAnnotationCache;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/amazon/kcp/application/IAnnotationCache;->setGarbleJournalUploadUrl(Z)V

    return-void
.end method
