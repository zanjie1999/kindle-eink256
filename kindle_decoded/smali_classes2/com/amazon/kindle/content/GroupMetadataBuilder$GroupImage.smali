.class Lcom/amazon/kindle/content/GroupMetadataBuilder$GroupImage;
.super Ljava/lang/Object;
.source "GroupMetadataBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/content/GroupMetadataBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GroupImage"
.end annotation


# instance fields
.field private final extension:Ljava/lang/String;

.field private final id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder$GroupImage;->id:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder$GroupImage;->extension:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/content/GroupMetadataBuilder$GroupImage;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder$GroupImage;->id:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/content/GroupMetadataBuilder$GroupImage;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder$GroupImage;->extension:Ljava/lang/String;

    return-object p0
.end method
