.class public Lcom/amazon/kindle/content/GroupItemMetadata;
.super Ljava/lang/Object;
.source "GroupItemMetadata.java"


# instance fields
.field private final groupId:Ljava/lang/String;

.field private final groupItemType:Ljava/lang/String;

.field private final groupPosition:F

.field private final groupPositionLabel:Ljava/lang/String;

.field private final itemId:Lcom/amazon/kindle/model/content/IBookID;

.field private originType:Ljava/lang/String;

.field private positionLabelPrefix:Ljava/lang/String;

.field private readState:Lcom/amazon/kindle/krx/content/IBook$ReadState;

.field private seriesOrderType:Lcom/amazon/kcp/library/models/SeriesOrderType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/amazon/kindle/content/GroupItemMetadata$1;

    invoke-direct {v0}, Lcom/amazon/kindle/content/GroupItemMetadata$1;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 50
    sget-object v6, Lcom/amazon/kindle/krx/content/IBook$ReadState;->UNREAD:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/amazon/kindle/content/GroupItemMetadata;-><init>(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/content/IBook$ReadState;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/content/IBook$ReadState;Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 60
    invoke-direct/range {v0 .. v8}, Lcom/amazon/kindle/content/GroupItemMetadata;-><init>(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/content/IBook$ReadState;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/content/IBook$ReadState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Lcom/amazon/kcp/library/models/SeriesOrderType;->UNORDERED:Lcom/amazon/kcp/library/models/SeriesOrderType;

    iput-object v0, p0, Lcom/amazon/kindle/content/GroupItemMetadata;->seriesOrderType:Lcom/amazon/kcp/library/models/SeriesOrderType;

    .line 76
    iput-object p1, p0, Lcom/amazon/kindle/content/GroupItemMetadata;->itemId:Lcom/amazon/kindle/model/content/IBookID;

    .line 77
    iput-object p2, p0, Lcom/amazon/kindle/content/GroupItemMetadata;->groupItemType:Ljava/lang/String;

    .line 78
    iput p3, p0, Lcom/amazon/kindle/content/GroupItemMetadata;->groupPosition:F

    .line 79
    iput-object p4, p0, Lcom/amazon/kindle/content/GroupItemMetadata;->groupPositionLabel:Ljava/lang/String;

    .line 80
    iput-object p5, p0, Lcom/amazon/kindle/content/GroupItemMetadata;->originType:Ljava/lang/String;

    .line 81
    iput-object p6, p0, Lcom/amazon/kindle/content/GroupItemMetadata;->readState:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    .line 82
    iput-object p7, p0, Lcom/amazon/kindle/content/GroupItemMetadata;->positionLabelPrefix:Ljava/lang/String;

    .line 83
    iput-object p8, p0, Lcom/amazon/kindle/content/GroupItemMetadata;->groupId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/content/GroupItemMetadata;)F
    .locals 0

    .line 17
    iget p0, p0, Lcom/amazon/kindle/content/GroupItemMetadata;->groupPosition:F

    return p0
.end method


# virtual methods
.method public getGroupId()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupItemMetadata;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupItemType()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupItemMetadata;->groupItemType:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupPosition()F
    .locals 1

    .line 97
    iget v0, p0, Lcom/amazon/kindle/content/GroupItemMetadata;->groupPosition:F

    return v0
.end method

.method public getGroupPositionLabel()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupItemMetadata;->groupPositionLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId()Lcom/amazon/kindle/model/content/IBookID;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupItemMetadata;->itemId:Lcom/amazon/kindle/model/content/IBookID;

    return-object v0
.end method

.method public getOriginType()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupItemMetadata;->originType:Ljava/lang/String;

    return-object v0
.end method

.method public getPositionLabelPrefix()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupItemMetadata;->positionLabelPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getReadState()Lcom/amazon/kindle/krx/content/IBook$ReadState;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupItemMetadata;->readState:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    return-object v0
.end method

.method public getSeriesOrderType()Lcom/amazon/kcp/library/models/SeriesOrderType;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupItemMetadata;->seriesOrderType:Lcom/amazon/kcp/library/models/SeriesOrderType;

    return-object v0
.end method

.method public setOriginType(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/amazon/kindle/content/GroupItemMetadata;->originType:Ljava/lang/String;

    return-void
.end method

.method public setReadState(Lcom/amazon/kindle/krx/content/IBook$ReadState;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/amazon/kindle/content/GroupItemMetadata;->readState:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    return-void
.end method

.method public setSeriesOrderType(Lcom/amazon/kcp/library/models/SeriesOrderType;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/amazon/kindle/content/GroupItemMetadata;->seriesOrderType:Lcom/amazon/kcp/library/models/SeriesOrderType;

    return-void
.end method
