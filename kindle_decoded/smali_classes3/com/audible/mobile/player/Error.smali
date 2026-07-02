.class public interface abstract Lcom/audible/mobile/player/Error;
.super Ljava/lang/Object;
.source "Error.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CALL_FAILED:Lcom/audible/mobile/player/Error;

.field public static final COULD_NOT_READ_MEDIA:Lcom/audible/mobile/player/Error;

.field public static final CREATING_RENDERER_FAILED:Lcom/audible/mobile/player/Error;

.field public static final INTERNAL_PLAYER:Lcom/audible/mobile/player/Error;

.field public static final IO_ERROR:Lcom/audible/mobile/player/Error;

.field public static final LICENSE_FAILED:Lcom/audible/mobile/player/Error;

.field public static final MEDIA_NOT_FOUND:Lcom/audible/mobile/player/Error;

.field public static final NO_NETWORK:Lcom/audible/mobile/player/Error;

.field public static final SEEK_OUT_OF_BOUNDS:Lcom/audible/mobile/player/Error;

.field public static final UNABLE_TO_ACQUIRE_AUDIOFOCUS:Lcom/audible/mobile/player/Error;

.field public static final UNKNOWN:Lcom/audible/mobile/player/Error;

.field public static final UNSUPPORTED_MEDIA:Lcom/audible/mobile/player/Error;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    sget-object v0, Lcom/audible/mobile/player/LegacyCompatibleError;->CALL_FAILED:Lcom/audible/mobile/player/LegacyCompatibleError;

    sput-object v0, Lcom/audible/mobile/player/Error;->CALL_FAILED:Lcom/audible/mobile/player/Error;

    .line 33
    sget-object v0, Lcom/audible/mobile/player/LegacyCompatibleError;->UNSUPPORTED_MEDIA:Lcom/audible/mobile/player/LegacyCompatibleError;

    sput-object v0, Lcom/audible/mobile/player/Error;->UNSUPPORTED_MEDIA:Lcom/audible/mobile/player/Error;

    .line 35
    sget-object v0, Lcom/audible/mobile/player/LegacyCompatibleError;->MEDIA_NOT_FOUND:Lcom/audible/mobile/player/LegacyCompatibleError;

    sput-object v0, Lcom/audible/mobile/player/Error;->MEDIA_NOT_FOUND:Lcom/audible/mobile/player/Error;

    .line 37
    sget-object v0, Lcom/audible/mobile/player/LegacyCompatibleError;->SEEK_OUT_OF_BOUNDS:Lcom/audible/mobile/player/LegacyCompatibleError;

    sput-object v0, Lcom/audible/mobile/player/Error;->SEEK_OUT_OF_BOUNDS:Lcom/audible/mobile/player/Error;

    .line 39
    sget-object v0, Lcom/audible/mobile/player/LegacyCompatibleError;->COULD_NOT_READ_MEDIA:Lcom/audible/mobile/player/LegacyCompatibleError;

    sput-object v0, Lcom/audible/mobile/player/Error;->COULD_NOT_READ_MEDIA:Lcom/audible/mobile/player/Error;

    .line 41
    sget-object v0, Lcom/audible/mobile/player/LegacyCompatibleError;->LICENSE_FAILED:Lcom/audible/mobile/player/LegacyCompatibleError;

    sput-object v0, Lcom/audible/mobile/player/Error;->LICENSE_FAILED:Lcom/audible/mobile/player/Error;

    .line 43
    sget-object v0, Lcom/audible/mobile/player/LegacyCompatibleError;->IO_ERROR:Lcom/audible/mobile/player/LegacyCompatibleError;

    sput-object v0, Lcom/audible/mobile/player/Error;->IO_ERROR:Lcom/audible/mobile/player/Error;

    .line 45
    sget-object v0, Lcom/audible/mobile/player/LegacyCompatibleError;->MEDIA_MALFORMED:Lcom/audible/mobile/player/LegacyCompatibleError;

    .line 47
    sget-object v0, Lcom/audible/mobile/player/LegacyCompatibleError;->TIME_OUT:Lcom/audible/mobile/player/LegacyCompatibleError;

    .line 49
    sget-object v0, Lcom/audible/mobile/player/LegacyCompatibleError;->UNABLE_TO_ACQUIRE_AUDIOFOCUS:Lcom/audible/mobile/player/LegacyCompatibleError;

    sput-object v0, Lcom/audible/mobile/player/Error;->UNABLE_TO_ACQUIRE_AUDIOFOCUS:Lcom/audible/mobile/player/Error;

    .line 51
    sget-object v0, Lcom/audible/mobile/player/LegacyCompatibleError;->INTERNAL_PLAYER:Lcom/audible/mobile/player/LegacyCompatibleError;

    sput-object v0, Lcom/audible/mobile/player/Error;->INTERNAL_PLAYER:Lcom/audible/mobile/player/Error;

    .line 53
    sget-object v0, Lcom/audible/mobile/player/LegacyCompatibleError;->REMOTE_PLAYER_CONFIG:Lcom/audible/mobile/player/LegacyCompatibleError;

    .line 55
    sget-object v0, Lcom/audible/mobile/player/LegacyCompatibleError;->REMOTE_PLAYER_SESSION:Lcom/audible/mobile/player/LegacyCompatibleError;

    .line 57
    sget-object v0, Lcom/audible/mobile/player/LegacyCompatibleError;->REMOTE_PLAYER_PLAYBACK:Lcom/audible/mobile/player/LegacyCompatibleError;

    .line 59
    sget-object v0, Lcom/audible/mobile/player/LegacyCompatibleError;->REMOTE_PLAYER_GENERIC:Lcom/audible/mobile/player/LegacyCompatibleError;

    .line 61
    sget-object v0, Lcom/audible/mobile/player/LegacyCompatibleError;->REMOTE_PLAYER_LOADING:Lcom/audible/mobile/player/LegacyCompatibleError;

    .line 63
    sget-object v0, Lcom/audible/mobile/player/LegacyCompatibleError;->CREATING_RENDERER_FAILED:Lcom/audible/mobile/player/LegacyCompatibleError;

    sput-object v0, Lcom/audible/mobile/player/Error;->CREATING_RENDERER_FAILED:Lcom/audible/mobile/player/Error;

    .line 65
    sget-object v0, Lcom/audible/mobile/player/LegacyCompatibleError;->NO_NETWORK:Lcom/audible/mobile/player/LegacyCompatibleError;

    sput-object v0, Lcom/audible/mobile/player/Error;->NO_NETWORK:Lcom/audible/mobile/player/Error;

    .line 67
    sget-object v0, Lcom/audible/mobile/player/LegacyCompatibleError;->UNKNOWN:Lcom/audible/mobile/player/LegacyCompatibleError;

    sput-object v0, Lcom/audible/mobile/player/Error;->UNKNOWN:Lcom/audible/mobile/player/Error;

    return-void
.end method


# virtual methods
.method public abstract name()Ljava/lang/String;
.end method
