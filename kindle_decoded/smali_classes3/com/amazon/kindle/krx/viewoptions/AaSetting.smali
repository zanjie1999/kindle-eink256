.class public final Lcom/amazon/kindle/krx/viewoptions/AaSetting;
.super Ljava/lang/Object;
.source "AaSetting.kt"


# instance fields
.field private final disabledDisplay:Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;

.field private final display:Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;

.field private final identifier:I

.field private final priority:I

.field private final visibilityHandler:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/amazon/kindle/krx/viewoptions/DisplayState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;Lkotlin/jvm/functions/Function0;Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lcom/amazon/kindle/krx/viewoptions/DisplayState;",
            ">;",
            "Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;",
            ")V"
        }
    .end annotation

    const-string v0, "display"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibilityHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "disabledDisplay"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/amazon/kindle/krx/viewoptions/AaSetting;->identifier:I

    iput p2, p0, Lcom/amazon/kindle/krx/viewoptions/AaSetting;->priority:I

    iput-object p3, p0, Lcom/amazon/kindle/krx/viewoptions/AaSetting;->display:Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;

    iput-object p4, p0, Lcom/amazon/kindle/krx/viewoptions/AaSetting;->visibilityHandler:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lcom/amazon/kindle/krx/viewoptions/AaSetting;->disabledDisplay:Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;

    return-void
.end method

.method public synthetic constructor <init>(IILcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;Lkotlin/jvm/functions/Function0;Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    .line 36
    sget-object p5, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/None;->INSTANCE:Lcom/amazon/kindle/krx/viewoptions/settingdisplay/None;

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;-><init>(IILcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;Lkotlin/jvm/functions/Function0;Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;)V

    return-void
.end method


# virtual methods
.method public final getDisabledDisplay()Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/AaSetting;->disabledDisplay:Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;

    return-object v0
.end method

.method public final getDisplay()Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/AaSetting;->display:Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;

    return-object v0
.end method

.method public final getIdentifier()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/amazon/kindle/krx/viewoptions/AaSetting;->identifier:I

    return v0
.end method

.method public final getPriority()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/amazon/kindle/krx/viewoptions/AaSetting;->priority:I

    return v0
.end method

.method public final getVisibilityHandler()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/amazon/kindle/krx/viewoptions/DisplayState;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/amazon/kindle/krx/viewoptions/AaSetting;->visibilityHandler:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method
