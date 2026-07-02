.class final Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView$init$1;
.super Ljava/lang/Object;
.source "DisclosureView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView$init$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 65
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView$init$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;->access$showSubordinateFragment(Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureView;)V

    return-void
.end method
