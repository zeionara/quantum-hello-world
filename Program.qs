namespace quantumHelloWorld {
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;

    operation passThroughCircuit(q: Qubit): Unit {
        H(q); T(q); H(q);
    }

    operation convertToInt(q: Qubit): Int {
        if (IsResultOne(M(q))) {
            return 1;
        }
        return 0;
    }

    @EntryPoint()
    operation main() : Unit {
        mutable nOnes = 0;
        let nIterations = 100;
        for (i in 1..nIterations) {
            using (q = Qubit()) {
                passThroughCircuit(q);
                let result = convertToInt(q);

                if (result > 0) {
                    X(q);
                    set nOnes = nOnes + 1;
                }
            }
        }
        Message($"Number of ones: {nOnes} / {nIterations}");
    }
}
