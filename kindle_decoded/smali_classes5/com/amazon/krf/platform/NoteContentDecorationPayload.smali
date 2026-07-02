.class public Lcom/amazon/krf/platform/NoteContentDecorationPayload;
.super Lcom/amazon/krf/platform/ContentDecorationPayload;
.source "NoteContentDecorationPayload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/krf/platform/NoteContentDecorationPayload$NoteIconType;
    }
.end annotation


# instance fields
.field private mNoteIconType:Lcom/amazon/krf/platform/NoteContentDecorationPayload$NoteIconType;

.field private mNotesText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/amazon/krf/platform/ContentDecorationPayload;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amazon/krf/platform/NoteContentDecorationPayload;->mNotesText:Ljava/lang/String;

    .line 31
    sget-object p1, Lcom/amazon/krf/platform/NoteContentDecorationPayload$NoteIconType;->DEFAULT_NOTE_ICON:Lcom/amazon/krf/platform/NoteContentDecorationPayload$NoteIconType;

    iput-object p1, p0, Lcom/amazon/krf/platform/NoteContentDecorationPayload;->mNoteIconType:Lcom/amazon/krf/platform/NoteContentDecorationPayload$NoteIconType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/amazon/krf/platform/ContentDecorationPayload;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/amazon/krf/platform/NoteContentDecorationPayload;->mNotesText:Ljava/lang/String;

    .line 42
    invoke-static {p2}, Lcom/amazon/krf/platform/NoteContentDecorationPayload$NoteIconType;->createFromInt(I)Lcom/amazon/krf/platform/NoteContentDecorationPayload$NoteIconType;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/krf/platform/NoteContentDecorationPayload;->mNoteIconType:Lcom/amazon/krf/platform/NoteContentDecorationPayload$NoteIconType;

    return-void
.end method


# virtual methods
.method public getNoteIconType()I
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/krf/platform/NoteContentDecorationPayload;->mNoteIconType:Lcom/amazon/krf/platform/NoteContentDecorationPayload$NoteIconType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public getNotesText()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/krf/platform/NoteContentDecorationPayload;->mNotesText:Ljava/lang/String;

    return-object v0
.end method

.method public getPayloadType()Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;
    .locals 1

    .line 55
    sget-object v0, Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;->NoteCotentDecorationPayload:Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;

    return-object v0
.end method
