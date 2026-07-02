.class public Lcom/amazon/ebook/util/text/FieldBasedTimeModel;
.super Ljava/lang/Object;


# static fields
.field private static final EPOCH:I = 0x7d0

.field private static final KEYS:[I


# instance fields
.field private calendar:Ljava/util/Calendar;

.field private hasChanges:Z

.field private locale:Ljava/util/Locale;

.field private maxYear:I

.field private minYear:I

.field private twentyFourHourMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/amazon/ebook/util/text/FieldBasedTimeModel;->KEYS:[I

    return-void

    :array_0
    .array-data 4
        0xd
        0xc
        0xb
        0x5
        0x2
        0x1
        0x9
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/ebook/util/text/FieldBasedTimeModel;->hasChanges:Z

    return-void
.end method
