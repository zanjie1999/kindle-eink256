.class public final synthetic Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I

.field public static final synthetic $EnumSwitchMapping$2:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/amazon/kindle/krx/content/IBook$ReadState;->values()[Lcom/amazon/kindle/krx/content/IBook$ReadState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kindle/krx/content/IBook$ReadState;->UNREAD:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kindle/krx/content/IBook$ReadState;->READ:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    invoke-static {}, Lcom/amazon/kcp/goodreads/GoodreadsRequestType;->values()[Lcom/amazon/kcp/goodreads/GoodreadsRequestType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/amazon/kcp/goodreads/GoodreadsRequestType;->GET_SHELF:Lcom/amazon/kcp/goodreads/GoodreadsRequestType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/amazon/kcp/goodreads/GoodreadsRequestType;->UPDATE_SHELF:Lcom/amazon/kcp/goodreads/GoodreadsRequestType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    invoke-static {}, Lcom/amazon/kcp/goodreads/GoodreadsRequestType;->values()[Lcom/amazon/kcp/goodreads/GoodreadsRequestType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lcom/amazon/kcp/goodreads/GoodreadsRequestType;->GET_SHELF:Lcom/amazon/kcp/goodreads/GoodreadsRequestType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lcom/amazon/kcp/goodreads/GoodreadsRequestType;->UPDATE_SHELF:Lcom/amazon/kcp/goodreads/GoodreadsRequestType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    return-void
.end method
