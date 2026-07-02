.class public final enum Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;
.super Ljava/lang/Enum;
.source "DebugKindleDocViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/DebugKindleDocViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExtraSettings"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

.field public static final enum FIT_TO_WIDTH:Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

.field public static final enum GV_AUTO_ROTATE:Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

.field public static final enum GV_MASK_COLOR:Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

.field public static final enum GV_SHOW_FULL_ON_ENTER:Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

.field public static final enum GV_SHOW_FULL_ON_EXIT:Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

.field public static final enum GV_TRANSITION_DURATION:Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

.field public static final enum MULTI_COLUMN:Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

.field public static final enum VERTICAL_SCROLL:Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 21
    new-instance v0, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    const/4 v1, 0x0

    const-string v2, "GV_MASK_COLOR"

    invoke-direct {v0, v2, v1}, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;->GV_MASK_COLOR:Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    .line 22
    new-instance v0, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    const/4 v2, 0x1

    const-string v3, "GV_TRANSITION_DURATION"

    invoke-direct {v0, v3, v2}, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;->GV_TRANSITION_DURATION:Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    .line 23
    new-instance v0, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    const/4 v3, 0x2

    const-string v4, "FIT_TO_WIDTH"

    invoke-direct {v0, v4, v3}, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;->FIT_TO_WIDTH:Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    .line 24
    new-instance v0, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    const/4 v4, 0x3

    const-string v5, "MULTI_COLUMN"

    invoke-direct {v0, v5, v4}, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;->MULTI_COLUMN:Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    .line 25
    new-instance v0, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    const/4 v5, 0x4

    const-string v6, "GV_SHOW_FULL_ON_ENTER"

    invoke-direct {v0, v6, v5}, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;->GV_SHOW_FULL_ON_ENTER:Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    .line 26
    new-instance v0, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    const/4 v6, 0x5

    const-string v7, "GV_SHOW_FULL_ON_EXIT"

    invoke-direct {v0, v7, v6}, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;->GV_SHOW_FULL_ON_EXIT:Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    .line 27
    new-instance v0, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    const/4 v7, 0x6

    const-string v8, "GV_AUTO_ROTATE"

    invoke-direct {v0, v8, v7}, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;->GV_AUTO_ROTATE:Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    .line 28
    new-instance v0, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    const/4 v8, 0x7

    const-string v9, "VERTICAL_SCROLL"

    invoke-direct {v0, v9, v8}, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;->VERTICAL_SCROLL:Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    .line 20
    sget-object v10, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;->GV_MASK_COLOR:Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    aput-object v10, v9, v1

    sget-object v1, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;->GV_TRANSITION_DURATION:Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    aput-object v1, v9, v2

    sget-object v1, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;->FIT_TO_WIDTH:Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    aput-object v1, v9, v3

    sget-object v1, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;->MULTI_COLUMN:Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    aput-object v1, v9, v4

    sget-object v1, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;->GV_SHOW_FULL_ON_ENTER:Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    aput-object v1, v9, v5

    sget-object v1, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;->GV_SHOW_FULL_ON_EXIT:Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    aput-object v1, v9, v6

    sget-object v1, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;->GV_AUTO_ROTATE:Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;->$VALUES:[Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    return-object p0
.end method

.method public static values()[Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;
    .locals 1

    .line 20
    sget-object v0, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;->$VALUES:[Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    invoke-virtual {v0}, [Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    return-object v0
.end method
