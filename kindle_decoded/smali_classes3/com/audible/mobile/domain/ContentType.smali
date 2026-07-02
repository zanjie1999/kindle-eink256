.class public final enum Lcom/audible/mobile/domain/ContentType;
.super Ljava/lang/Enum;
.source "ContentType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/domain/ContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/domain/ContentType;

.field public static final enum Album:Lcom/audible/mobile/domain/ContentType;

.field public static final enum Article:Lcom/audible/mobile/domain/ContentType;

.field public static final enum Episode:Lcom/audible/mobile/domain/ContentType;

.field public static final enum Excerpt:Lcom/audible/mobile/domain/ContentType;

.field public static final enum Hypnosis:Lcom/audible/mobile/domain/ContentType;

.field public static final enum Lecture:Lcom/audible/mobile/domain/ContentType;

.field public static final enum Meditation:Lcom/audible/mobile/domain/ContentType;

.field public static final enum Misc:Lcom/audible/mobile/domain/ContentType;

.field public static final enum NewspaperMagazine:Lcom/audible/mobile/domain/ContentType;

.field public static final enum Other:Lcom/audible/mobile/domain/ContentType;

.field public static final enum Performance:Lcom/audible/mobile/domain/ContentType;

.field public static final enum Periodical:Lcom/audible/mobile/domain/ContentType;

.field public static final enum Podcast:Lcom/audible/mobile/domain/ContentType;

.field public static final enum Product:Lcom/audible/mobile/domain/ContentType;

.field public static final enum RadioTvProgram:Lcom/audible/mobile/domain/ContentType;

.field public static final enum Sample:Lcom/audible/mobile/domain/ContentType;

.field public static final enum Speech:Lcom/audible/mobile/domain/ContentType;

.field public static final enum WalkingTour:Lcom/audible/mobile/domain/ContentType;

.field public static final enum Wordcast:Lcom/audible/mobile/domain/ContentType;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 12
    new-instance v0, Lcom/audible/mobile/domain/ContentType;

    const/4 v1, 0x0

    const-string v2, "Product"

    invoke-direct {v0, v2, v1}, Lcom/audible/mobile/domain/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/domain/ContentType;->Product:Lcom/audible/mobile/domain/ContentType;

    .line 13
    new-instance v0, Lcom/audible/mobile/domain/ContentType;

    const/4 v2, 0x1

    const-string v3, "Performance"

    invoke-direct {v0, v3, v2}, Lcom/audible/mobile/domain/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/domain/ContentType;->Performance:Lcom/audible/mobile/domain/ContentType;

    .line 14
    new-instance v0, Lcom/audible/mobile/domain/ContentType;

    const/4 v3, 0x2

    const-string v4, "Speech"

    invoke-direct {v0, v4, v3}, Lcom/audible/mobile/domain/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/domain/ContentType;->Speech:Lcom/audible/mobile/domain/ContentType;

    .line 15
    new-instance v0, Lcom/audible/mobile/domain/ContentType;

    const/4 v4, 0x3

    const-string v5, "Lecture"

    invoke-direct {v0, v5, v4}, Lcom/audible/mobile/domain/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/domain/ContentType;->Lecture:Lcom/audible/mobile/domain/ContentType;

    .line 16
    new-instance v0, Lcom/audible/mobile/domain/ContentType;

    const/4 v5, 0x4

    const-string v6, "WalkingTour"

    invoke-direct {v0, v6, v5}, Lcom/audible/mobile/domain/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/domain/ContentType;->WalkingTour:Lcom/audible/mobile/domain/ContentType;

    .line 17
    new-instance v0, Lcom/audible/mobile/domain/ContentType;

    const/4 v6, 0x5

    const-string v7, "RadioTvProgram"

    invoke-direct {v0, v7, v6}, Lcom/audible/mobile/domain/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/domain/ContentType;->RadioTvProgram:Lcom/audible/mobile/domain/ContentType;

    .line 18
    new-instance v0, Lcom/audible/mobile/domain/ContentType;

    const/4 v7, 0x6

    const-string v8, "NewspaperMagazine"

    invoke-direct {v0, v8, v7}, Lcom/audible/mobile/domain/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/domain/ContentType;->NewspaperMagazine:Lcom/audible/mobile/domain/ContentType;

    .line 19
    new-instance v0, Lcom/audible/mobile/domain/ContentType;

    const/4 v8, 0x7

    const-string v9, "Periodical"

    invoke-direct {v0, v9, v8}, Lcom/audible/mobile/domain/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/domain/ContentType;->Periodical:Lcom/audible/mobile/domain/ContentType;

    .line 20
    new-instance v0, Lcom/audible/mobile/domain/ContentType;

    const/16 v9, 0x8

    const-string v10, "Wordcast"

    invoke-direct {v0, v10, v9}, Lcom/audible/mobile/domain/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/domain/ContentType;->Wordcast:Lcom/audible/mobile/domain/ContentType;

    .line 21
    new-instance v0, Lcom/audible/mobile/domain/ContentType;

    const/16 v10, 0x9

    const-string v11, "Excerpt"

    invoke-direct {v0, v11, v10}, Lcom/audible/mobile/domain/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/domain/ContentType;->Excerpt:Lcom/audible/mobile/domain/ContentType;

    .line 22
    new-instance v0, Lcom/audible/mobile/domain/ContentType;

    const/16 v11, 0xa

    const-string v12, "Other"

    invoke-direct {v0, v12, v11}, Lcom/audible/mobile/domain/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/domain/ContentType;->Other:Lcom/audible/mobile/domain/ContentType;

    .line 23
    new-instance v0, Lcom/audible/mobile/domain/ContentType;

    const/16 v12, 0xb

    const-string v13, "Article"

    invoke-direct {v0, v13, v12}, Lcom/audible/mobile/domain/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/domain/ContentType;->Article:Lcom/audible/mobile/domain/ContentType;

    .line 24
    new-instance v0, Lcom/audible/mobile/domain/ContentType;

    const/16 v13, 0xc

    const-string v14, "Album"

    invoke-direct {v0, v14, v13}, Lcom/audible/mobile/domain/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/domain/ContentType;->Album:Lcom/audible/mobile/domain/ContentType;

    .line 25
    new-instance v0, Lcom/audible/mobile/domain/ContentType;

    const/16 v14, 0xd

    const-string v15, "Episode"

    invoke-direct {v0, v15, v14}, Lcom/audible/mobile/domain/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/domain/ContentType;->Episode:Lcom/audible/mobile/domain/ContentType;

    .line 26
    new-instance v0, Lcom/audible/mobile/domain/ContentType;

    const/16 v15, 0xe

    const-string v14, "Hypnosis"

    invoke-direct {v0, v14, v15}, Lcom/audible/mobile/domain/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/domain/ContentType;->Hypnosis:Lcom/audible/mobile/domain/ContentType;

    .line 27
    new-instance v0, Lcom/audible/mobile/domain/ContentType;

    const/16 v14, 0xf

    const-string v15, "Meditation"

    invoke-direct {v0, v15, v14}, Lcom/audible/mobile/domain/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/domain/ContentType;->Meditation:Lcom/audible/mobile/domain/ContentType;

    .line 28
    new-instance v0, Lcom/audible/mobile/domain/ContentType;

    const/16 v15, 0x10

    const-string v14, "Misc"

    invoke-direct {v0, v14, v15}, Lcom/audible/mobile/domain/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/domain/ContentType;->Misc:Lcom/audible/mobile/domain/ContentType;

    .line 29
    new-instance v0, Lcom/audible/mobile/domain/ContentType;

    const/16 v14, 0x11

    const-string v15, "Sample"

    invoke-direct {v0, v15, v14}, Lcom/audible/mobile/domain/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/domain/ContentType;->Sample:Lcom/audible/mobile/domain/ContentType;

    .line 30
    new-instance v0, Lcom/audible/mobile/domain/ContentType;

    const/16 v15, 0x12

    const-string v14, "Podcast"

    invoke-direct {v0, v14, v15}, Lcom/audible/mobile/domain/ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/domain/ContentType;->Podcast:Lcom/audible/mobile/domain/ContentType;

    const/16 v14, 0x13

    new-array v14, v14, [Lcom/audible/mobile/domain/ContentType;

    .line 11
    sget-object v16, Lcom/audible/mobile/domain/ContentType;->Product:Lcom/audible/mobile/domain/ContentType;

    aput-object v16, v14, v1

    sget-object v1, Lcom/audible/mobile/domain/ContentType;->Performance:Lcom/audible/mobile/domain/ContentType;

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/mobile/domain/ContentType;->Speech:Lcom/audible/mobile/domain/ContentType;

    aput-object v1, v14, v3

    sget-object v1, Lcom/audible/mobile/domain/ContentType;->Lecture:Lcom/audible/mobile/domain/ContentType;

    aput-object v1, v14, v4

    sget-object v1, Lcom/audible/mobile/domain/ContentType;->WalkingTour:Lcom/audible/mobile/domain/ContentType;

    aput-object v1, v14, v5

    sget-object v1, Lcom/audible/mobile/domain/ContentType;->RadioTvProgram:Lcom/audible/mobile/domain/ContentType;

    aput-object v1, v14, v6

    sget-object v1, Lcom/audible/mobile/domain/ContentType;->NewspaperMagazine:Lcom/audible/mobile/domain/ContentType;

    aput-object v1, v14, v7

    sget-object v1, Lcom/audible/mobile/domain/ContentType;->Periodical:Lcom/audible/mobile/domain/ContentType;

    aput-object v1, v14, v8

    sget-object v1, Lcom/audible/mobile/domain/ContentType;->Wordcast:Lcom/audible/mobile/domain/ContentType;

    aput-object v1, v14, v9

    sget-object v1, Lcom/audible/mobile/domain/ContentType;->Excerpt:Lcom/audible/mobile/domain/ContentType;

    aput-object v1, v14, v10

    sget-object v1, Lcom/audible/mobile/domain/ContentType;->Other:Lcom/audible/mobile/domain/ContentType;

    aput-object v1, v14, v11

    sget-object v1, Lcom/audible/mobile/domain/ContentType;->Article:Lcom/audible/mobile/domain/ContentType;

    aput-object v1, v14, v12

    sget-object v1, Lcom/audible/mobile/domain/ContentType;->Album:Lcom/audible/mobile/domain/ContentType;

    aput-object v1, v14, v13

    sget-object v1, Lcom/audible/mobile/domain/ContentType;->Episode:Lcom/audible/mobile/domain/ContentType;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/mobile/domain/ContentType;->Hypnosis:Lcom/audible/mobile/domain/ContentType;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/mobile/domain/ContentType;->Meditation:Lcom/audible/mobile/domain/ContentType;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/mobile/domain/ContentType;->Misc:Lcom/audible/mobile/domain/ContentType;

    const/16 v2, 0x10

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/mobile/domain/ContentType;->Sample:Lcom/audible/mobile/domain/ContentType;

    const/16 v2, 0x11

    aput-object v1, v14, v2

    aput-object v0, v14, v15

    sput-object v14, Lcom/audible/mobile/domain/ContentType;->$VALUES:[Lcom/audible/mobile/domain/ContentType;

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

.method public static safeValueOf(Ljava/lang/String;)Lcom/audible/mobile/domain/ContentType;
    .locals 0

    .line 35
    :try_start_0
    invoke-static {p0}, Lcom/audible/mobile/domain/ContentType;->valueOf(Ljava/lang/String;)Lcom/audible/mobile/domain/ContentType;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 37
    :catch_0
    sget-object p0, Lcom/audible/mobile/domain/ContentType;->Other:Lcom/audible/mobile/domain/ContentType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/domain/ContentType;
    .locals 1

    .line 11
    const-class v0, Lcom/audible/mobile/domain/ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/domain/ContentType;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/domain/ContentType;
    .locals 1

    .line 11
    sget-object v0, Lcom/audible/mobile/domain/ContentType;->$VALUES:[Lcom/audible/mobile/domain/ContentType;

    invoke-virtual {v0}, [Lcom/audible/mobile/domain/ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/domain/ContentType;

    return-object v0
.end method
