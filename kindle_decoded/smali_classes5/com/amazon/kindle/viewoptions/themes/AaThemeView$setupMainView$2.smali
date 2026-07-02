.class final Lcom/amazon/kindle/viewoptions/themes/AaThemeView$setupMainView$2;
.super Ljava/lang/Object;
.source "AaThemeView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->setupMainView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemeView;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/themes/AaThemeView;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView$setupMainView$2;->this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 188
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeView$setupMainView$2;->this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemeView;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/themes/AaThemeView;->access$openEditThemeDialog(Lcom/amazon/kindle/viewoptions/themes/AaThemeView;)V

    return-void
.end method
