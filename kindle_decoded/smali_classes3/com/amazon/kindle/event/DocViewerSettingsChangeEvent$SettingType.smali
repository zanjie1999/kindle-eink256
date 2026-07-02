.class public final enum Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;
.super Ljava/lang/Enum;
.source "DocViewerSettingsChangeEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SettingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

.field public static final enum DEFAULT_FONT_FACE:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

.field public static final enum FONT_SIZE:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

.field public static final enum LINE_SPACING:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

.field public static final enum MARGIN:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

.field public static final enum MONOSPACE_FONT_FACE:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

.field public static final enum ORIENTATION:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

.field public static final enum PAGE_LAYOUT:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

.field public static final enum READING_MODE:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

.field public static final enum TEXT_ALIGNMENT:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;


# instance fields
.field private causesReflow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 38
    new-instance v0, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "FONT_SIZE"

    invoke-direct {v0, v3, v1, v2}, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;->FONT_SIZE:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    .line 43
    new-instance v0, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    const-string v3, "DEFAULT_FONT_FACE"

    invoke-direct {v0, v3, v2, v2}, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;->DEFAULT_FONT_FACE:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    .line 48
    new-instance v0, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    const/4 v3, 0x2

    const-string v4, "MONOSPACE_FONT_FACE"

    invoke-direct {v0, v4, v3, v2}, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;->MONOSPACE_FONT_FACE:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    .line 53
    new-instance v0, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    const/4 v4, 0x3

    const-string v5, "LINE_SPACING"

    invoke-direct {v0, v5, v4, v2}, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;->LINE_SPACING:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    .line 58
    new-instance v0, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    const/4 v5, 0x4

    const-string v6, "MARGIN"

    invoke-direct {v0, v6, v5, v2}, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;->MARGIN:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    .line 63
    new-instance v0, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    const/4 v6, 0x5

    const-string v7, "TEXT_ALIGNMENT"

    invoke-direct {v0, v7, v6, v2}, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;->TEXT_ALIGNMENT:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    .line 68
    new-instance v0, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    const/4 v7, 0x6

    const-string v8, "ORIENTATION"

    invoke-direct {v0, v8, v7, v2}, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;->ORIENTATION:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    .line 73
    new-instance v0, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    const/4 v8, 0x7

    const-string v9, "PAGE_LAYOUT"

    invoke-direct {v0, v9, v8, v2}, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;->PAGE_LAYOUT:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    .line 78
    new-instance v0, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    const/16 v9, 0x8

    const-string v10, "READING_MODE"

    invoke-direct {v0, v10, v9, v2}, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;->READING_MODE:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    .line 34
    sget-object v11, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;->FONT_SIZE:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    aput-object v11, v10, v1

    sget-object v1, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;->DEFAULT_FONT_FACE:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    aput-object v1, v10, v2

    sget-object v1, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;->MONOSPACE_FONT_FACE:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    aput-object v1, v10, v3

    sget-object v1, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;->LINE_SPACING:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    aput-object v1, v10, v4

    sget-object v1, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;->MARGIN:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    aput-object v1, v10, v5

    sget-object v1, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;->TEXT_ALIGNMENT:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    aput-object v1, v10, v6

    sget-object v1, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;->ORIENTATION:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    aput-object v1, v10, v7

    sget-object v1, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;->PAGE_LAYOUT:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;->$VALUES:[Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 83
    iput-boolean p3, p0, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;->causesReflow:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;
    .locals 1

    .line 34
    const-class v0, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;
    .locals 1

    .line 34
    sget-object v0, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;->$VALUES:[Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;

    return-object v0
.end method


# virtual methods
.method public causesReflow()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;->causesReflow:Z

    return v0
.end method
