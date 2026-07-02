.class public final enum Lcom/amazon/krf/platform/NoteContentDecorationPayload$NoteIconType;
.super Ljava/lang/Enum;
.source "NoteContentDecorationPayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/platform/NoteContentDecorationPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NoteIconType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/krf/platform/NoteContentDecorationPayload$NoteIconType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/krf/platform/NoteContentDecorationPayload$NoteIconType;

.field public static final enum DEFAULT_NOTE_ICON:Lcom/amazon/krf/platform/NoteContentDecorationPayload$NoteIconType;

.field public static final enum SEARCHED_NOTE_ICON:Lcom/amazon/krf/platform/NoteContentDecorationPayload$NoteIconType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 12
    new-instance v0, Lcom/amazon/krf/platform/NoteContentDecorationPayload$NoteIconType;

    const/4 v1, 0x0

    const-string v2, "DEFAULT_NOTE_ICON"

    invoke-direct {v0, v2, v1}, Lcom/amazon/krf/platform/NoteContentDecorationPayload$NoteIconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/NoteContentDecorationPayload$NoteIconType;->DEFAULT_NOTE_ICON:Lcom/amazon/krf/platform/NoteContentDecorationPayload$NoteIconType;

    .line 13
    new-instance v0, Lcom/amazon/krf/platform/NoteContentDecorationPayload$NoteIconType;

    const/4 v2, 0x1

    const-string v3, "SEARCHED_NOTE_ICON"

    invoke-direct {v0, v3, v2}, Lcom/amazon/krf/platform/NoteContentDecorationPayload$NoteIconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/NoteContentDecorationPayload$NoteIconType;->SEARCHED_NOTE_ICON:Lcom/amazon/krf/platform/NoteContentDecorationPayload$NoteIconType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/krf/platform/NoteContentDecorationPayload$NoteIconType;

    .line 11
    sget-object v4, Lcom/amazon/krf/platform/NoteContentDecorationPayload$NoteIconType;->DEFAULT_NOTE_ICON:Lcom/amazon/krf/platform/NoteContentDecorationPayload$NoteIconType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/krf/platform/NoteContentDecorationPayload$NoteIconType;->$VALUES:[Lcom/amazon/krf/platform/NoteContentDecorationPayload$NoteIconType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static createFromInt(I)Lcom/amazon/krf/platform/NoteContentDecorationPayload$NoteIconType;
    .locals 1

    .line 16
    invoke-static {}, Lcom/amazon/krf/platform/NoteContentDecorationPayload$NoteIconType;->values()[Lcom/amazon/krf/platform/NoteContentDecorationPayload$NoteIconType;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/krf/platform/NoteContentDecorationPayload$NoteIconType;
    .locals 1

    .line 11
    const-class v0, Lcom/amazon/krf/platform/NoteContentDecorationPayload$NoteIconType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/krf/platform/NoteContentDecorationPayload$NoteIconType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/krf/platform/NoteContentDecorationPayload$NoteIconType;
    .locals 1

    .line 11
    sget-object v0, Lcom/amazon/krf/platform/NoteContentDecorationPayload$NoteIconType;->$VALUES:[Lcom/amazon/krf/platform/NoteContentDecorationPayload$NoteIconType;

    invoke-virtual {v0}, [Lcom/amazon/krf/platform/NoteContentDecorationPayload$NoteIconType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/krf/platform/NoteContentDecorationPayload$NoteIconType;

    return-object v0
.end method
