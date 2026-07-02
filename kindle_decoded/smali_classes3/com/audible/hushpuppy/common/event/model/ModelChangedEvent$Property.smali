.class public final enum Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;
.super Ljava/lang/Enum;
.source "ModelChangedEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Property"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

.field public static final enum AUDIBLE_INTERFACE_VISIBILITY:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

.field public static final enum AUDIO_FILE_DELETED:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

.field public static final enum AUDIO_FILE_FOUND:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

.field public static final enum CURRENT_AUDIO_POSITION:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

.field public static final enum CURRENT_RELATIONSHIP:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

.field public static final enum DOWNLOAD_INFO_STATE:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

.field public static final enum DOWNLOAD_PROGRESS:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

.field public static final enum DOWNLOAD_TOTAL:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

.field public static final enum EBOOK_INFO:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

.field public static final enum EBOOK_POSITION:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

.field public static final enum EBOOK_SEEK_BAR_POSITION:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

.field public static final enum END_ANNOTATION:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

.field public static final enum LANGUAGE_CHANGED:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

.field public static final enum MAXIMUM_DURATION_AUDIO_POSITION:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

.field public static final enum MAXIMUM_PLAYABLE_AUDIO_POSITION:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

.field public static final enum NARRATION_SPEED:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

.field public static final enum NARRATOR:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

.field public static final enum PAGE:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

.field public static final enum PLAYER_STATE:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

.field public static final enum PRICE:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

.field public static final enum REMAINING_TEXT:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

.field public static final enum SCRUBBING:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

.field public static final enum START_ANNOTATION:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

.field public static final enum SYNC_DATA:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

.field public static final enum SYNC_FILE_FOUND:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

.field public static final enum TITLE:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

.field public static final enum TOGGLE_PLAYER_VISIBILITY:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

.field public static final enum TRANSIENT_HIGHLIGHTING:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

.field public static final enum UPSELL_STATE:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

.field public static final enum USER_DEREGISTERED:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

.field public static final enum USER_REGISTERED:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 19
    new-instance v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/4 v1, 0x0

    const-string v2, "EBOOK_INFO"

    invoke-direct {v0, v2, v1}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->EBOOK_INFO:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    .line 21
    new-instance v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/4 v2, 0x1

    const-string v3, "CURRENT_RELATIONSHIP"

    invoke-direct {v0, v3, v2}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->CURRENT_RELATIONSHIP:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    .line 23
    new-instance v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/4 v3, 0x2

    const-string v4, "AUDIBLE_INTERFACE_VISIBILITY"

    invoke-direct {v0, v4, v3}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->AUDIBLE_INTERFACE_VISIBILITY:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    .line 25
    new-instance v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/4 v4, 0x3

    const-string v5, "PLAYER_STATE"

    invoke-direct {v0, v5, v4}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->PLAYER_STATE:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    .line 27
    new-instance v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/4 v5, 0x4

    const-string v6, "DOWNLOAD_INFO_STATE"

    invoke-direct {v0, v6, v5}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->DOWNLOAD_INFO_STATE:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    .line 29
    new-instance v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/4 v6, 0x5

    const-string v7, "CURRENT_AUDIO_POSITION"

    invoke-direct {v0, v7, v6}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->CURRENT_AUDIO_POSITION:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    .line 31
    new-instance v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/4 v7, 0x6

    const-string v8, "MAXIMUM_PLAYABLE_AUDIO_POSITION"

    invoke-direct {v0, v8, v7}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->MAXIMUM_PLAYABLE_AUDIO_POSITION:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    .line 33
    new-instance v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/4 v8, 0x7

    const-string v9, "MAXIMUM_DURATION_AUDIO_POSITION"

    invoke-direct {v0, v9, v8}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->MAXIMUM_DURATION_AUDIO_POSITION:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    .line 35
    new-instance v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/16 v9, 0x8

    const-string v10, "EBOOK_POSITION"

    invoke-direct {v0, v10, v9}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->EBOOK_POSITION:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    .line 37
    new-instance v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/16 v10, 0x9

    const-string v11, "EBOOK_SEEK_BAR_POSITION"

    invoke-direct {v0, v11, v10}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->EBOOK_SEEK_BAR_POSITION:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    .line 39
    new-instance v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/16 v11, 0xa

    const-string v12, "REMAINING_TEXT"

    invoke-direct {v0, v12, v11}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->REMAINING_TEXT:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    .line 41
    new-instance v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/16 v12, 0xb

    const-string v13, "TITLE"

    invoke-direct {v0, v13, v12}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->TITLE:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    .line 43
    new-instance v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/16 v13, 0xc

    const-string v14, "NARRATOR"

    invoke-direct {v0, v14, v13}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->NARRATOR:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    .line 45
    new-instance v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/16 v14, 0xd

    const-string v15, "NARRATION_SPEED"

    invoke-direct {v0, v15, v14}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->NARRATION_SPEED:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    .line 47
    new-instance v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/16 v15, 0xe

    const-string v14, "PRICE"

    invoke-direct {v0, v14, v15}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->PRICE:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    .line 49
    new-instance v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/16 v14, 0xf

    const-string v15, "UPSELL_STATE"

    invoke-direct {v0, v15, v14}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->UPSELL_STATE:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    .line 51
    new-instance v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/16 v15, 0x10

    const-string v14, "DOWNLOAD_PROGRESS"

    invoke-direct {v0, v14, v15}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->DOWNLOAD_PROGRESS:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    .line 53
    new-instance v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/16 v14, 0x11

    const-string v15, "DOWNLOAD_TOTAL"

    invoke-direct {v0, v15, v14}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->DOWNLOAD_TOTAL:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    .line 55
    new-instance v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/16 v15, 0x12

    const-string v14, "SYNC_DATA"

    invoke-direct {v0, v14, v15}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->SYNC_DATA:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    .line 57
    new-instance v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/16 v14, 0x13

    const-string v15, "PAGE"

    invoke-direct {v0, v15, v14}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->PAGE:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    .line 59
    new-instance v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/16 v15, 0x14

    const-string v14, "START_ANNOTATION"

    invoke-direct {v0, v14, v15}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->START_ANNOTATION:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    .line 61
    new-instance v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/16 v14, 0x15

    const-string v15, "END_ANNOTATION"

    invoke-direct {v0, v15, v14}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->END_ANNOTATION:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    .line 63
    new-instance v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const-string v15, "SCRUBBING"

    const/16 v14, 0x16

    invoke-direct {v0, v15, v14}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->SCRUBBING:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    .line 65
    new-instance v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const-string v14, "AUDIO_FILE_FOUND"

    const/16 v15, 0x17

    invoke-direct {v0, v14, v15}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->AUDIO_FILE_FOUND:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    .line 67
    new-instance v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const-string v14, "SYNC_FILE_FOUND"

    const/16 v15, 0x18

    invoke-direct {v0, v14, v15}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->SYNC_FILE_FOUND:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    .line 69
    new-instance v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const-string v14, "TOGGLE_PLAYER_VISIBILITY"

    const/16 v15, 0x19

    invoke-direct {v0, v14, v15}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->TOGGLE_PLAYER_VISIBILITY:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    .line 71
    new-instance v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const-string v14, "LANGUAGE_CHANGED"

    const/16 v15, 0x1a

    invoke-direct {v0, v14, v15}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->LANGUAGE_CHANGED:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    .line 73
    new-instance v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const-string v14, "USER_REGISTERED"

    const/16 v15, 0x1b

    invoke-direct {v0, v14, v15}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->USER_REGISTERED:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    .line 75
    new-instance v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const-string v14, "USER_DEREGISTERED"

    const/16 v15, 0x1c

    invoke-direct {v0, v14, v15}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->USER_DEREGISTERED:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    .line 77
    new-instance v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const-string v14, "AUDIO_FILE_DELETED"

    const/16 v15, 0x1d

    invoke-direct {v0, v14, v15}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->AUDIO_FILE_DELETED:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    .line 79
    new-instance v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const-string v14, "TRANSIENT_HIGHLIGHTING"

    const/16 v15, 0x1e

    invoke-direct {v0, v14, v15}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->TRANSIENT_HIGHLIGHTING:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/16 v14, 0x1f

    new-array v14, v14, [Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    .line 17
    sget-object v15, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->EBOOK_INFO:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    aput-object v15, v14, v1

    sget-object v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->CURRENT_RELATIONSHIP:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->AUDIBLE_INTERFACE_VISIBILITY:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    aput-object v1, v14, v3

    sget-object v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->PLAYER_STATE:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    aput-object v1, v14, v4

    sget-object v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->DOWNLOAD_INFO_STATE:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    aput-object v1, v14, v5

    sget-object v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->CURRENT_AUDIO_POSITION:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    aput-object v1, v14, v6

    sget-object v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->MAXIMUM_PLAYABLE_AUDIO_POSITION:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    aput-object v1, v14, v7

    sget-object v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->MAXIMUM_DURATION_AUDIO_POSITION:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    aput-object v1, v14, v8

    sget-object v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->EBOOK_POSITION:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    aput-object v1, v14, v9

    sget-object v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->EBOOK_SEEK_BAR_POSITION:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    aput-object v1, v14, v10

    sget-object v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->REMAINING_TEXT:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    aput-object v1, v14, v11

    sget-object v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->TITLE:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    aput-object v1, v14, v12

    sget-object v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->NARRATOR:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    aput-object v1, v14, v13

    sget-object v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->NARRATION_SPEED:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->PRICE:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->UPSELL_STATE:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->DOWNLOAD_PROGRESS:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/16 v2, 0x10

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->DOWNLOAD_TOTAL:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/16 v2, 0x11

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->SYNC_DATA:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/16 v2, 0x12

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->PAGE:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/16 v2, 0x13

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->START_ANNOTATION:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/16 v2, 0x14

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->END_ANNOTATION:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/16 v2, 0x15

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->SCRUBBING:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/16 v2, 0x16

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->AUDIO_FILE_FOUND:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/16 v2, 0x17

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->SYNC_FILE_FOUND:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/16 v2, 0x18

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->TOGGLE_PLAYER_VISIBILITY:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/16 v2, 0x19

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->LANGUAGE_CHANGED:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/16 v2, 0x1a

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->USER_REGISTERED:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/16 v2, 0x1b

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->USER_DEREGISTERED:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/16 v2, 0x1c

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->AUDIO_FILE_DELETED:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/16 v2, 0x1d

    aput-object v1, v14, v2

    const/16 v1, 0x1e

    aput-object v0, v14, v1

    sput-object v14, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->$VALUES:[Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;
    .locals 1

    .line 17
    const-class v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;
    .locals 1

    .line 17
    sget-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->$VALUES:[Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    return-object v0
.end method
