.class public final synthetic Lorg/reflections/util/-$$Lambda$VQnU3Jki1-RCSS5B-Yg_Kf6hQAY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lorg/reflections/util/-$$Lambda$VQnU3Jki1-RCSS5B-Yg_Kf6hQAY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/reflections/util/-$$Lambda$VQnU3Jki1-RCSS5B-Yg_Kf6hQAY;

    invoke-direct {v0}, Lorg/reflections/util/-$$Lambda$VQnU3Jki1-RCSS5B-Yg_Kf6hQAY;-><init>()V

    sput-object v0, Lorg/reflections/util/-$$Lambda$VQnU3Jki1-RCSS5B-Yg_Kf6hQAY;->INSTANCE:Lorg/reflections/util/-$$Lambda$VQnU3Jki1-RCSS5B-Yg_Kf6hQAY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method
