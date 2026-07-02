.class final Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenter$1;
.super Ljava/util/HashSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/Integer;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x4e00

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x4e8c

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x4e09

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x56db

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x4e94

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x516d

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x4e03

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x516b

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x4e5d

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x5341

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x767e

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x5343

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x4e07

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x5104

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x5146

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
