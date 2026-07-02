.class Lcom/amazon/kcp/oob/NavigationController$1;
.super Lcom/amazon/kindle/krx/ui/BaseLandingScreenTabContext;
.source "NavigationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/oob/NavigationController;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/amazon/kcp/library/ui/bottombar/BottomBar;Landroid/view/View;Landroid/view/ViewGroup;Lcom/amazon/kindle/krx/theme/Theme;Landroidx/appcompat/widget/Toolbar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroidx/appcompat/app/AppCompatActivity;

.field final synthetic val$currentTheme:Lcom/amazon/kindle/krx/theme/Theme;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/oob/NavigationController;Landroidx/appcompat/app/AppCompatActivity;Lcom/amazon/kindle/krx/theme/Theme;)V
    .locals 0

    .line 115
    iput-object p2, p0, Lcom/amazon/kcp/oob/NavigationController$1;->val$activity:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p3, p0, Lcom/amazon/kcp/oob/NavigationController$1;->val$currentTheme:Lcom/amazon/kindle/krx/theme/Theme;

    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/BaseLandingScreenTabContext;-><init>()V

    return-void
.end method


# virtual methods
.method public getAndroidContext()Landroid/content/Context;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController$1;->val$activity:Landroidx/appcompat/app/AppCompatActivity;

    return-object v0
.end method

.method public getTheme()Lcom/amazon/kindle/krx/theme/Theme;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController$1;->val$currentTheme:Lcom/amazon/kindle/krx/theme/Theme;

    return-object v0
.end method
