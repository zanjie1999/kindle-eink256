.class Lcom/audible/hushpuppy/common/debug/AudibleDebugActivity$1;
.super Ljava/lang/Object;
.source "AudibleDebugActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/common/debug/AudibleDebugActivity;->initFeatureSwitches()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/common/debug/AudibleDebugActivity;

.field final synthetic val$feature:Lcom/audible/hushpuppy/common/debug/DebugFeature;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/common/debug/AudibleDebugActivity;Lcom/audible/hushpuppy/common/debug/DebugFeature;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugActivity$1;->this$0:Lcom/audible/hushpuppy/common/debug/AudibleDebugActivity;

    iput-object p2, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugActivity$1;->val$feature:Lcom/audible/hushpuppy/common/debug/DebugFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 54
    iget-object p1, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugActivity$1;->this$0:Lcom/audible/hushpuppy/common/debug/AudibleDebugActivity;

    invoke-static {p1}, Lcom/audible/hushpuppy/common/debug/AudibleDebugActivity;->access$000(Lcom/audible/hushpuppy/common/debug/AudibleDebugActivity;)Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;

    move-result-object p1

    iget-object v0, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugActivity$1;->val$feature:Lcom/audible/hushpuppy/common/debug/DebugFeature;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/debug/DebugFeature;->getDebugTogglePreferenceKey()Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;->setBoolean(Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;Z)V

    return-void
.end method
