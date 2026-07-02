.class public final Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Divider;
.super Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;
.source "AaSettingDisplay.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Divider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 158
    new-instance v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Divider;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Divider;-><init>()V

    sput-object v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Divider;->INSTANCE:Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Divider;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
