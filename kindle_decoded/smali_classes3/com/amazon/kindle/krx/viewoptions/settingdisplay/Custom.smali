.class public final Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Custom;
.super Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;
.source "AaSettingDisplay.kt"


# instance fields
.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Custom;->view:Landroid/view/View;

    return-void
.end method

.method public static synthetic copy$default(Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Custom;Landroid/view/View;ILjava/lang/Object;)Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Custom;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Custom;->view:Landroid/view/View;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Custom;->copy(Landroid/view/View;)Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Custom;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Custom;->view:Landroid/view/View;

    return-object v0
.end method

.method public final copy(Landroid/view/View;)Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Custom;
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Custom;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Custom;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Custom;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Custom;

    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Custom;->view:Landroid/view/View;

    iget-object p1, p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Custom;->view:Landroid/view/View;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Custom;->view:Landroid/view/View;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Custom;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setView(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Custom;->view:Landroid/view/View;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Custom(view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Custom;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
