.class public Lcom/amazon/ebook/util/text/recognizer/RussianRecognizer;
.super Lcom/amazon/ebook/util/text/recognizer/NGramRecognizer;


# static fields
.field public static final ru_ngrams:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/amazon/ebook/util/text/recognizer/RussianRecognizer;->ru_ngrams:[J

    return-void

    :array_0
    .array-data 8
        0x2004320020L
        0x200432043eL
        0x200434043eL
        0x2004370430L
        0x2004380020L
        0x20043a0430L    # 6.7938900012E-313
        0x20043a043eL    # 6.79389000187E-313
        0x20043d0430L
        0x20043d0435L
        0x20043e0431L
        0x20043f043eL
        0x20043f0440L
        0x2004400430L
        0x200441043eL
        0x2004410442L
        0x200442043eL
        0x2004470442L
        0x20044d0442L
        0x430043d0438L
        0x4300442044cL
        0x433043e0020L
        0x435043b044cL
        0x435043d0438L
        0x43504410442L
        0x43504420020L
        0x4380020043fL
        0x43804350020L
        0x43804380020L
        0x438044f0020L
        0x43b0435043dL
        0x43b04380020L
        0x43b044c043dL
        0x43d04300020L
        0x43d04350020L
        0x43d04380435L
        0x43d0438044fL
        0x43d043e0020L
        0x43d043e0432L
        0x43e00200432L
        0x43e0020043fL
        0x43e00200441L
        0x43e04320020L
        0x43e04320430L
        0x43e0433043eL
        0x43e04390020L
        0x43e043b044cL
        0x43e043c0020L
        0x43e04410442L
        0x43f043e043bL
        0x43f04400435L
        0x43f04400438L
        0x43f0440043eL
        0x44004300432L
        0x44004350434L
        0x44104420430L
        0x44104420432L
        0x44104420438L
        0x441044f0020L
        0x4420435043bL
        0x442043e0020L
        0x442043e0440L
        0x442044c0020L
        0x4470442043eL
        0x44b04450020L
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/ebook/util/text/recognizer/NGramRecognizer;-><init>()V

    return-void
.end method
