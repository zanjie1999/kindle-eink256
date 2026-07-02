.class final enum Lcom/amazon/krf/media/AudioPlayerImpl$State;
.super Ljava/lang/Enum;
.source "AudioPlayerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/media/AudioPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/krf/media/AudioPlayerImpl$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/krf/media/AudioPlayerImpl$State;

.field public static final enum End:Lcom/amazon/krf/media/AudioPlayerImpl$State;

.field public static final enum Error:Lcom/amazon/krf/media/AudioPlayerImpl$State;

.field public static final enum Idle:Lcom/amazon/krf/media/AudioPlayerImpl$State;

.field public static final enum Initialized:Lcom/amazon/krf/media/AudioPlayerImpl$State;

.field public static final enum Paused:Lcom/amazon/krf/media/AudioPlayerImpl$State;

.field public static final enum PlaybackCompleted:Lcom/amazon/krf/media/AudioPlayerImpl$State;

.field public static final enum Prepared:Lcom/amazon/krf/media/AudioPlayerImpl$State;

.field public static final enum Preparing:Lcom/amazon/krf/media/AudioPlayerImpl$State;

.field public static final enum Started:Lcom/amazon/krf/media/AudioPlayerImpl$State;

.field public static final enum Stopped:Lcom/amazon/krf/media/AudioPlayerImpl$State;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 99
    new-instance v0, Lcom/amazon/krf/media/AudioPlayerImpl$State;

    const/4 v1, 0x0

    const-string v2, "Idle"

    invoke-direct {v0, v2, v1}, Lcom/amazon/krf/media/AudioPlayerImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Idle:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    .line 104
    new-instance v0, Lcom/amazon/krf/media/AudioPlayerImpl$State;

    const/4 v2, 0x1

    const-string v3, "Initialized"

    invoke-direct {v0, v3, v2}, Lcom/amazon/krf/media/AudioPlayerImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Initialized:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    .line 109
    new-instance v0, Lcom/amazon/krf/media/AudioPlayerImpl$State;

    const/4 v3, 0x2

    const-string v4, "Preparing"

    invoke-direct {v0, v4, v3}, Lcom/amazon/krf/media/AudioPlayerImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Preparing:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    .line 114
    new-instance v0, Lcom/amazon/krf/media/AudioPlayerImpl$State;

    const/4 v4, 0x3

    const-string v5, "Prepared"

    invoke-direct {v0, v5, v4}, Lcom/amazon/krf/media/AudioPlayerImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Prepared:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    .line 119
    new-instance v0, Lcom/amazon/krf/media/AudioPlayerImpl$State;

    const/4 v5, 0x4

    const-string v6, "Started"

    invoke-direct {v0, v6, v5}, Lcom/amazon/krf/media/AudioPlayerImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Started:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    .line 124
    new-instance v0, Lcom/amazon/krf/media/AudioPlayerImpl$State;

    const/4 v6, 0x5

    const-string v7, "Paused"

    invoke-direct {v0, v7, v6}, Lcom/amazon/krf/media/AudioPlayerImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Paused:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    .line 129
    new-instance v0, Lcom/amazon/krf/media/AudioPlayerImpl$State;

    const/4 v7, 0x6

    const-string v8, "PlaybackCompleted"

    invoke-direct {v0, v8, v7}, Lcom/amazon/krf/media/AudioPlayerImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/media/AudioPlayerImpl$State;->PlaybackCompleted:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    .line 134
    new-instance v0, Lcom/amazon/krf/media/AudioPlayerImpl$State;

    const/4 v8, 0x7

    const-string v9, "Stopped"

    invoke-direct {v0, v9, v8}, Lcom/amazon/krf/media/AudioPlayerImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Stopped:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    .line 139
    new-instance v0, Lcom/amazon/krf/media/AudioPlayerImpl$State;

    const/16 v9, 0x8

    const-string v10, "Error"

    invoke-direct {v0, v10, v9}, Lcom/amazon/krf/media/AudioPlayerImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Error:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    .line 144
    new-instance v0, Lcom/amazon/krf/media/AudioPlayerImpl$State;

    const/16 v10, 0x9

    const-string v11, "End"

    invoke-direct {v0, v11, v10}, Lcom/amazon/krf/media/AudioPlayerImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/media/AudioPlayerImpl$State;->End:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    const/16 v11, 0xa

    new-array v11, v11, [Lcom/amazon/krf/media/AudioPlayerImpl$State;

    .line 95
    sget-object v12, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Idle:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    aput-object v12, v11, v1

    sget-object v1, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Initialized:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    aput-object v1, v11, v2

    sget-object v1, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Preparing:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    aput-object v1, v11, v3

    sget-object v1, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Prepared:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    aput-object v1, v11, v4

    sget-object v1, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Started:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    aput-object v1, v11, v5

    sget-object v1, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Paused:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    aput-object v1, v11, v6

    sget-object v1, Lcom/amazon/krf/media/AudioPlayerImpl$State;->PlaybackCompleted:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    aput-object v1, v11, v7

    sget-object v1, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Stopped:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    aput-object v1, v11, v8

    sget-object v1, Lcom/amazon/krf/media/AudioPlayerImpl$State;->Error:Lcom/amazon/krf/media/AudioPlayerImpl$State;

    aput-object v1, v11, v9

    aput-object v0, v11, v10

    sput-object v11, Lcom/amazon/krf/media/AudioPlayerImpl$State;->$VALUES:[Lcom/amazon/krf/media/AudioPlayerImpl$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/krf/media/AudioPlayerImpl$State;
    .locals 1

    .line 95
    const-class v0, Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/krf/media/AudioPlayerImpl$State;

    return-object p0
.end method

.method public static values()[Lcom/amazon/krf/media/AudioPlayerImpl$State;
    .locals 1

    .line 95
    sget-object v0, Lcom/amazon/krf/media/AudioPlayerImpl$State;->$VALUES:[Lcom/amazon/krf/media/AudioPlayerImpl$State;

    invoke-virtual {v0}, [Lcom/amazon/krf/media/AudioPlayerImpl$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/krf/media/AudioPlayerImpl$State;

    return-object v0
.end method
