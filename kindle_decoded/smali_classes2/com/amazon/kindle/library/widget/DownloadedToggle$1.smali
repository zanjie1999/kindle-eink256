.class public final Lcom/amazon/kindle/library/widget/DownloadedToggle$1;
.super Ljava/lang/Object;
.source "DownloadedToggle.kt"

# interfaces
.implements Lcom/amazon/kindle/library/widget/ToggleGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/library/widget/DownloadedToggle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/library/widget/DownloadedToggle;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/library/widget/DownloadedToggle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/amazon/kindle/library/widget/DownloadedToggle$1;->this$0:Lcom/amazon/kindle/library/widget/DownloadedToggle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/amazon/kindle/library/widget/ToggleGroup;I)V
    .locals 2

    const-string v0, "toggleGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lcom/amazon/kindle/library/widget/DownloadedToggle$1;->this$0:Lcom/amazon/kindle/library/widget/DownloadedToggle;

    invoke-static {p1}, Lcom/amazon/kindle/library/widget/DownloadedToggle;->access$getMOnToggleListener$p(Lcom/amazon/kindle/library/widget/DownloadedToggle;)Lcom/amazon/kindle/library/widget/DownloadedToggle$OnToggleListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 50
    iget-object v0, p0, Lcom/amazon/kindle/library/widget/DownloadedToggle$1;->this$0:Lcom/amazon/kindle/library/widget/DownloadedToggle;

    .line 51
    invoke-static {}, Lcom/amazon/kindle/library/widget/DownloadedToggleKt;->access$getALL_BUTTON_ID$p()I

    move-result v1

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 49
    :goto_0
    invoke-interface {p1, v0, p2}, Lcom/amazon/kindle/library/widget/DownloadedToggle$OnToggleListener;->onToggle(Lcom/amazon/kindle/library/widget/DownloadedToggle;Z)V

    :cond_1
    return-void
.end method
