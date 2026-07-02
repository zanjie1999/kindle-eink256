.class public final Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Field"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field$Builder;
    }
.end annotation


# static fields
.field private static final fieldDefaultInstance:Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;


# instance fields
.field private fixed32:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private fixed64:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private group:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;",
            ">;"
        }
    .end annotation
.end field

.field private lengthDelimited:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private varint:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->newBuilder()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field$Builder;->build()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->fieldDefaultInstance:Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;-><init>()V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$502(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$602(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$702(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$802(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$900(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$902(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;
    .locals 1

    sget-object v0, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->fieldDefaultInstance:Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;

    return-object v0
.end method

.method private getIdentityArray()[Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static newBuilder()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field$Builder;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field$Builder;->access$300()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;)Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field$Builder;
    .locals 1

    invoke-static {}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->newBuilder()Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field$Builder;->mergeFrom(Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;)Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->getIdentityArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;

    invoke-direct {p1}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->getIdentityArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getFixed32List()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;

    return-object v0
.end method

.method public getFixed64List()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;

    return-object v0
.end method

.method public getGroupList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;

    return-object v0
.end method

.method public getLengthDelimitedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize(I)I
    .locals 4

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p1, v2}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/google/protobuf/ByteString;

    invoke-static {p1, v2}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/amazon/whispersync/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    invoke-static {p1, v2}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/amazon/whispersync/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_4

    :cond_4
    return v1
.end method

.method public getSerializedSizeAsMessageSetExtension(I)I
    .locals 3

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/google/protobuf/ByteString;

    invoke-static {p1, v2}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->computeRawMessageSetExtensionSize(ILcom/amazon/whispersync/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getVarintList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->getIdentityArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeAsMessageSetExtensionTo(ILcom/amazon/whispersync/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/google/protobuf/ByteString;

    invoke-virtual {p2, p1, v1}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->writeRawMessageSetExtension(ILcom/amazon/whispersync/google/protobuf/ByteString;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeTo(ILcom/amazon/whispersync/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->varint:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, p1, v1, v2}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->fixed32:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, p1, v1}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->writeFixed32(II)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->fixed64:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, p1, v1, v2}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->lengthDelimited:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/google/protobuf/ByteString;

    invoke-virtual {p2, p1, v1}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->writeBytes(ILcom/amazon/whispersync/google/protobuf/ByteString;)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet$Field;->group:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/google/protobuf/UnknownFieldSet;

    invoke-virtual {p2, p1, v1}, Lcom/amazon/whispersync/google/protobuf/CodedOutputStream;->writeGroup(ILcom/amazon/whispersync/google/protobuf/MessageLite;)V

    goto :goto_4

    :cond_4
    return-void
.end method
