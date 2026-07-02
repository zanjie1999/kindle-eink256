.class final Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$touchExplorationStateChangeListener$1;
.super Ljava/lang/Object;
.source "KRIFReadingModeBookViewController.kt"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$touchExplorationStateChangeListener$1;->this$0:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouchExplorationStateChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 135
    iget-object p1, p0, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController$touchExplorationStateChangeListener$1;->this$0:Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;

    invoke-static {p1}, Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;->access$handleTouchExplorationEnabled(Lcom/amazon/kindle/rendering/KRIFReadingModeBookViewController;)V

    :cond_0
    return-void
.end method
