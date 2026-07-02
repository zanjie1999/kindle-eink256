.class final Lcom/amazon/kindle/recaps/activity/RecapsActivity$onCreate$7;
.super Ljava/lang/Object;
.source "RecapsActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/recaps/activity/RecapsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $tocButton:Landroid/widget/ToggleButton;


# direct methods
.method constructor <init>(Landroid/widget/ToggleButton;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$onCreate$7;->$tocButton:Landroid/widget/ToggleButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 196
    iget-object p1, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$onCreate$7;->$tocButton:Landroid/widget/ToggleButton;

    invoke-virtual {p1}, Landroid/widget/ToggleButton;->toggle()V

    return-void
.end method
