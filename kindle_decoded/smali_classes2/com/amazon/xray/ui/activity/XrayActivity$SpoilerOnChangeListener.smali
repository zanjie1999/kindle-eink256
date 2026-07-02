.class Lcom/amazon/xray/ui/activity/XrayActivity$SpoilerOnChangeListener;
.super Ljava/lang/Object;
.source "XrayActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/activity/XrayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpoilerOnChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/activity/XrayActivity;


# direct methods
.method private constructor <init>(Lcom/amazon/xray/ui/activity/XrayActivity;)V
    .locals 0

    .line 799
    iput-object p1, p0, Lcom/amazon/xray/ui/activity/XrayActivity$SpoilerOnChangeListener;->this$0:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/activity/XrayActivity;Lcom/amazon/xray/ui/activity/XrayActivity$1;)V
    .locals 0

    .line 799
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/activity/XrayActivity$SpoilerOnChangeListener;-><init>(Lcom/amazon/xray/ui/activity/XrayActivity;)V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 803
    iget-object p1, p0, Lcom/amazon/xray/ui/activity/XrayActivity$SpoilerOnChangeListener;->this$0:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    return-void
.end method
