.class public Lcom/amazon/klo/debug/KLODebugOptions;
.super Landroid/widget/LinearLayout;
.source "KLODebugOptions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DEBUG_SETTINGS:Ljava/lang/String; = "DebugSettings"

.field private static final DISABLE:Ljava/lang/String; = "Disable "

.field private static final ENABLE:Ljava/lang/String; = "Enable "

.field private static final ENABLED_INFOCARDS_V2:Ljava/lang/String; = "EnableInfoCardsV2"

.field private static final FEEDBACK_CONTROL_BOOLEAN:Ljava/lang/String; = "XRayFeedbackEnabled"

.field private static final FEEDBACK_CONTROL_BUTTON:Ljava/lang/String; = "X-Ray Feedback"

.field private static final FEEDBACK_ENABLED:Z = true

.field private static final FIRST_PARTY_APP_TYPE:Ljava/lang/String; = "KRT"

.field private static final INFOCARDS_V2_WEBLAB:Ljava/lang/String; = "KINDLE_ANDROID_INFOCARDS_IMPROVEMENT_247474"

.field private static final WEBLAB_ENABLED_TREATMENT:Ljava/lang/String; = "T1"


# instance fields
.field private feedbackControl:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getFeedbackControlText()Ljava/lang/String;
    .locals 1

    .line 53
    invoke-static {}, Lcom/amazon/klo/debug/KLODebugOptions;->getFeedbackEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Disable X-Ray Feedback"

    goto :goto_0

    :cond_0
    const-string v0, "Enable X-Ray Feedback"

    :goto_0
    return-object v0
.end method

.method public static getFeedbackEnabled()Ljava/lang/Boolean;
    .locals 4

    .line 58
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "DebugSettings"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "XRayFeedbackEnabled"

    .line 61
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 65
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isFirstPartyBuild()Z
    .locals 2

    .line 79
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAppType()Lcom/amazon/kindle/krx/application/AppType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KRT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private toggleFeedbackControl(Landroid/widget/Button;)V
    .locals 4

    .line 71
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DebugSettings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "XRayFeedbackEnabled"

    .line 72
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    xor-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 73
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 75
    invoke-direct {p0}, Lcom/amazon/klo/debug/KLODebugOptions;->getFeedbackControlText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/klo/debug/KLODebugOptions;->feedbackControl:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 47
    invoke-direct {p0, v0}, Lcom/amazon/klo/debug/KLODebugOptions;->toggleFeedbackControl(Landroid/widget/Button;)V

    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .line 37
    sget v0, Lcom/amazon/klo/R$id;->klo_debug_button_feedback:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amazon/klo/debug/KLODebugOptions;->feedbackControl:Landroid/widget/Button;

    .line 38
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object v0, p0, Lcom/amazon/klo/debug/KLODebugOptions;->feedbackControl:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/amazon/klo/debug/KLODebugOptions;->getFeedbackControlText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
