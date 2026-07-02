.class public final enum Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;
.super Ljava/lang/Enum;
.source "NoteCardUIData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EditResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;

.field public static final enum ADDED:Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;

.field public static final enum DELETED:Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;

.field public static final enum EDITED:Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 175
    new-instance v0, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;

    const/4 v1, 0x0

    const-string v2, "ADDED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;->ADDED:Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;

    .line 180
    new-instance v0, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;

    const/4 v2, 0x1

    const-string v3, "EDITED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;->EDITED:Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;

    .line 185
    new-instance v0, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;

    const/4 v3, 0x2

    const-string v4, "DELETED"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;->DELETED:Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;

    .line 171
    sget-object v5, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;->ADDED:Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;->EDITED:Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;->$VALUES:[Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 171
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;
    .locals 1

    .line 171
    const-class v0, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;
    .locals 1

    .line 171
    sget-object v0, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;->$VALUES:[Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;

    invoke-virtual {v0}, [Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData$EditResult;

    return-object v0
.end method
